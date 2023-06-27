
# ./configure
./configure --enable-static

make PROGRAMS="dropbear dbclient dropbearkey dropbearconvert scp"

tar -cvf dropbear.tar.gz dropbear dbclient dropbearkey dropbearconvert scp
