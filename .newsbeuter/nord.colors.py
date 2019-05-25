import sys
from RGBtoTerm256 import rgb2short

nord_colormap = {

    # Polar Night black -> grey
    "___nord00":"2E3440",
    "___nord01":"3B4252",
    "___nord02":"434C5E",
    "___nord03":"4C566A",

    # Snow Storm: grey -> white
    "___nord04":"D9DEE9",
    "___nord06":"E5E9F0",
    "___nord07":"ECEFF4",

    # Frost - green -> blue
    "___nord08":"8FBCBB",
    "___nord09":"88C0D0",
    "___nord10":"81A1C1",
    "___nord11":"5E81AC",

    # Aurora
    "___nord12":"BF616A", # red
    "___nord13":"D08770", # orange
    "___nord14":"EBCB8B", # yellow
    "___nord15":"A3BE8C", # green
    "___nord16":"B48EAD"  # purple

}

f = open(sys.argv[1], mode='r')
fout = open(sys.argv[1] + '.out', mode='w+')

for l in f:
    for key in nord_colormap.keys():
        l = l.replace(key, "color" + rgb2short(nord_colormap[key])[0])
    fout.write(l)
f.close()
fout.close()
