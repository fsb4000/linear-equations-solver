OS="`uname`"
case $OS in
  'Linux')
    alias make='make'
    ;;
  'FreeBSD')
    alias make='gmake'
    ;;
  *) ;;
esac

make clean && VALGRIND=1 make && valgrind --log-file=drd.txt --read-var-info=yes --tool=drd bin/test_vala
