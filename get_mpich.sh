# https://d-meiser.github.io/2016/01/10/mpi-travis.html
if [ -f mpich/lib/libmpich.so ]; then
  echo "libmpich.so found -- nothing to build."
else
  echo "Downloading mpich source."
  wget http://www.mpich.org/static/downloads/3.4a2/mpich-3.4a2.tar.gz
  tar xfz mpich-3.4a2.tar.gz
  rm mpich-3.4a2.tar.gz
  echo "configuring and building mpich."
  cd mpich-3.4a2
  ./configure --prefix=`pwd`/../mpich --with-device=ch4:ucx --enable-shared
  make -j4
  make install
  cd -
  rm -rf mpich-3.4a2
fi