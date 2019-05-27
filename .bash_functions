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




