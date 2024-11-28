
# ./configure
cmd="$1"

if [ "$cmd" = "clean" ] || [ "$cmd" = "C" ]; then
    make clean
    exit 0
elif [ "$cmd" = "conf" ] || [ "$cmd" = "c" ]; then
    ./configure --enable-static
elif [ "$cmd" = "make" ] || [ "$cmd" = "m" ]; then
    make PROGRAMS="dropbear dbclient dropbearkey dropbearconvert scp"
elif [ "$cmd" = "tar" ] || [ "$cmd" = "t" ]; then
    tar -cvf dropbear.tar.gz dropbear dbclient dropbearkey dropbearconvert scp
elif [ "$cmd" = "test" ] || [ "$cmd" = "T" ]; then
    ./dbclient -c help
else
    echo "Usage: $0 [clean|conf|make]"
    exit 1
fi