#!/usr/bin/env bash

function _gitfile(){
        declare URL="https://raw.githubusercontent.com/$2"
                echo "Downloading $URL to $1"
                curl -fLo $1 --create-dirs $URL
};

function _diffconfs(){
        echo "Diff-ing configuration files $1 <-> $2"

                declare tmpfn1=$1.sort.tmp
                declare tmpfn2=$2.sort.tmp

                cat $1 | sort -b > $tmpfn1
                cat $2 | sort -b > $tmpfn2

                rm $tmpfn1 $tmpfn2
                vimdiff $tmpfn1 $tmpfn2
}

function _filec(){
        echo "Copying $1 to clipboard"
                cat $1 | xclip
}
function _filev(){
        echo "Pasting clipboard to file $1"
                xclip -o > $1
}

function _git_repo_name() {
        echo $(cd ${1}; basename `git rev-parse --show-toplevel`)
}

function _makedot() {
        echo "Copying files in git repository $(_git_repo_name $1) at $1 to $HOME"
                (cd $1; git ls-files) |
                while read f; do {

                        ORIG="${1}/${f}"
                                DEST="${HOME}/${f}"
                                cp $ORIG $DEST
                                echo "Copied $ORIG to $DEST"
                }; done
}
function _takedot() {
        echo "Copying files in git repository $(_git_repo_name $1) at $1 from $HOME to $1"
                (cd $1; git ls-files) |
                while read f; do {
                        ORIG="${HOME}/${f}"
                                DEST="${1}/${f}"
                                if [ -f $ORIG ]; then {
                                        cp $ORIG $DEST
                                                echo "Copied $ORIG to $DEST"
                                } else echo "$ORIG not found."
                                        fi
                }; done
}

function sitedl() {
    if [[ "$#" -eq "0" ]]
    then {
            echo "USAGE: curlrecur <URL> <DIR>"
            exit 0
    }
    fi

    # TODO add recursive depth option
    echo "Downloading ${1} recursively to ${2}..."

    if [[ -d $2 ]]; then {
            echo "ERROR: Directory $2 already exists."
            exit 0
    }
    fi

    if ! curl -fLo ${2}/index.html --create-dirs ${1} -s ; then {
            echo "ERROR: GET request to $1 returns an error code."
            exit 0
    }
    fi

    curl -s ${1} \
            | grep "HREF" \
            | awk -F '"' '{print $2}' \
            | while read href ; do {
    # TODO skip request to duplicate effective URLs
    curl -fLo ${2}/${href} "$(dirname ${1})/${href}" -s -w '%{url_effective}\n';
    }
     done

    echo "... done."
    lynx ${2}/index.html
}

# TODO why no function keyword?
..() {
  local d=""
  limit=$1
  for ((i=1 ; i <= limit ; i++)); do
    d=$d/..
  done
  d=$(echo $d | sed 's/^\///')
  if [[ -z "$d" ]]; then
    d=..
  fi
  cd $d
  return 0
}
extract() {
  if [ -f $1 ]; then
    case $1 in
      *.tar.bz2) tar -jxvf $1 ;;
      *.tar.gz)  tar -zxvf $1 ;;
      *.bz2)     bunzip2 $1 ;;
      *.gz)      gunzip $1 ;;
      *.tar)     tar -xvf $1 ;;
      *.tbz2)    tar -jxvf $1 ;;
      *.tgz)     tar -zxvf $1 ;;
      *.zip)     unzip $1 ;;
      *)
      printf "\e[33mUnsupported format\e[0m"
      return 1
      ;;
    esac
    printf "\e[32mExtracted\e[0m %s" "$1"
  else
    printf "\e[33m%s is not a valid extractable file\e[0m" "$1"
    return 1
  fi
  return 0
}
extractto() {
  local isVerbose destination response filename
  trap "echo User aborted." SIGINT SIGTERM
  if [[ "$#" -lt 1 ]]; then
    printf "\e[1mUsage: \e[36mextractto \e[01;36m<FILE> \e[30m[DESTINATION_FOLDER] [v]\e[0m\n"
    printf "Append a \e[36mv\e[0m to be verbose"
    return 1
  fi
  if [[ ! -e "$1" ]]; then
    printf "\e[31mFile not found\e[0m"
    return 2
  fi
  if [[ -z "$2" ]]; then
    destination="."
  elif [[ ! -d "$2" ]]; then
    printf "\e[33mDestination folder not exist or is not a directory.\e[0m"
    printf "\nCreate? (y/n): "
    read response
    if [[ $response == y || $response == Y ]]; then
      mkdir -p "$2"
      if [ $? -eq 0 ]; then
        destination="$2"
      else
        return 6
      fi
    else
      return 3
    fi
  else
    destination="$2"
  fi
  if [[ ! -z "$3" ]]; then
    if [[ "$3" != "v" ]]; then
      printf "\e[31mWrong argument %s\e[0m" "$3"
      return 4
    fi
    isVerbose="$3"
  fi
  filename=`basename "$1"`
  case "${filename##*.}" in
    tar)
      tar x${isVerbose}f "$1" -C "$destination"
      printf "\e[36m%s\e[0m > \e[36m%s\e[0m (uncompressed tar)" "$1" "$destination"
      ;;
    gz)
      tar x${isVerbose}fz "$1" -C "$destination"
      printf "\e[36m%s\e[0m > \e[36m%s\e[0m (gzip compressed tar)" "$1" "$destination"
      ;;
    tgz)
      tar x${isVerbose}fz "$1" -C "$destination"
      printf "\e[36m%s\e[0m > \e[36m%s\e[0m (gzip compressed tar)" "$1" "$destination"
      ;;
    xz)
      tar x${isVerbose}f -J "$1" -C "$destination"
      printf "\e[36m%s\e[0m > \e[36m%s\e[0m (gzip compressed tar)" "$1" "$destination"
      ;;
    bz2)
      tar x${isVerbose}fj "$1" -C "$destination"
      printf "\e[36m%s\e[0m > \e[36m%s\e[0m (bzip compressed tar)" "$1" "$destination"
      ;;
    zip)
      unzip "$1" -d "$destination"
      printf "\e[36m%s\e[0m > \e[36m%s\e[0m (zip compressed tar)" "$1" "$destination"
      ;;
    rar)
      unrar x "$1" "$destination"
      printf "\e[36m%s\e[0m > \e[36m%s\e[0m (rar compressed file)" "$1" "$destination"
      ;;
    7z)
      7za e "$1" -o"$destination"
      printf "\e[36m%s\e[0m > \e[36m%s\e[0m (7zip compressed file)" "$1" "$destination"
      ;;
    *)
      printf "\e[33mUnsupported file format\e[0m"
      return 5
      ;;
  esac
  trap '' SIGINT SIGTERM
  return 0
}
compress() {
  if [ -n $1 ]; then
    file=$1
    case $file in
      *.tar.xz) shift && tar cJf $file $* ;;
      *.tar.bz2) shift && tar cjf $file $* ;;
      *.tar.gz) shift && tar czf $file $* ;;
      *.gz) shift && tar czf $file $* ;;
      *.tar) shift && tar cf $file $* ;;
      *.tgz) shift && tar czf $file $* ;;
      *.zip) shift && zip $file $* ;;
      *.7z) shift && 7za a $file $* >/dev/null ;;
      *)
        echo -e "\e[1;38;5;221m\u2757 \e[0mUnsupported format"
        return 1
        ;;
    esac
    echo -e "\e[1;38;5;77m\u2714 \e[0mCompressed \e[3;38;5;80m'$file'\e[0m"
  else
    echo -e "\e[1;38;5;160m\u2717 \e[3;38;5;80m'$file' \e[1;37mis not a valid extractable file\e[0m"
    return 1
  fi
  return 0
}
seti() {
  local uptime session
  session=0
  case "$1" in
    -s)
      session=1
      ;;
    -h)
      printf "\e[1mUsage: \e[36mseti \e[30m[OPTIONS]\n"
      printf "  \e[01;36m-s  \e[0mShow session start\n"
      printf "  \e[01;36m-h  \e[0mShow this help\e[0m\n"
      return 0
      ;;
    -*)
      printf "\e[31mUnknown option\e[0m"
      return 1
      ;;
  esac
  if [ $session -gt 0 ]
  then
    uptime=$(uptime -s)
  else
    uptime=$(</proc/uptime)
    uptime=${uptime%%.*}
    s=$(( uptime%60 ))
    m=$(( uptime/60%60 ))
    h=$(( uptime/60/60%24 ))
    d=$(( uptime/60/60/24 ))
    uptime=""$d"d "$h"h "$m"m "$s"s"
  fi
  printf "\e[36m%s\e[0m" "$uptime"
  return 0
}
mkd() {
  mkdir -p "$@" && cd "$@"
}
gzcomp() {
  local origsize=$(wc -c < "$1");
  local gzipsize=$(gzip -c "$1" | wc -c);
  local ratio=$(echo "$gzipsize * 100 / $origsize" | bc -l);
  printf "orig: %d bytes\n" "$origsize";
  printf "gzip: %d bytes (%2.2f%%)\n" "$gzipsize" "$ratio";
}
uesc() {
  printf "\\\x%s" $(printf "$@" | xxd -p -c1 -u);
}
