if [ -f petsc/README.md ]; then
  echo "PETSc directory exists."
  cd petsc
  make check
  cd -
  if [ $? -eq 0 ]; then
    echo "PETSc installed -- nothing to build."
  else
    echo "Downloading PETSc source."
    git clone -b maint https://gitlab.com/petsc/petsc.git petsc
    echo "configuring and building mpich."
    cd petsc
    ./configure --with-cc=gcc --with-cxx=g++ --with-fc=gfortran --download-mpich  # --with-mpi-dir=$HOME/build/dbeat/numerical/mpich
    make -j4
    cd -
  fi
else
    echo "no make check"
    echo "Downloading PETSc source."
    git clone -b maint https://gitlab.com/petsc/petsc.git petsc
    echo "configuring and building mpich."
    cd petsc
    ./configure --with-cc=gcc --with-cxx=g++ --with-fc=gfortran --download-mpich  # --with-mpi-dir=$HOME/build/dbeat/numerical/mpich
    make -j4
    cd -
fi