FILE="$HOME/.cache/dpi"
VAL1="0.5"
VAL2="1"

dpi=$(<$FILE)

if [ -z "$dpi" ]; then
    echo "$VAL1" >$FILE
    dpi=$(<$FILE)
fi

dpi=$([ "$dpi" == "$VAL1" ] && echo "$VAL2" || echo "$VAL1")

echo "$dpi" >$FILE
echo "$dpi"
