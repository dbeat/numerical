if [ -f petsc/README.md ]; then
  echo "PETSc directory exists."
  cd petsc
  make check
  if [ $? -eq 0 ]; then
    echo "PETSc installed -- nothing to build."
    cd -
  else
    echo "Updating PETSc source."
    git pull
    echo "configuring and building PETSc"
    ./configure # --with-cc=gcc --with-cxx=g++ --with-fc=gfortran --download-mpich 
    make -j4
    make PETSC_DIR=$HOME/build/dbeat/numerical/petsc PETSC_ARCH=arch-linux2-c-debug check
    cd -
  fi
else
    echo "no make check"
    echo "Downloading PETSc source."
    git clone -b maint https://gitlab.com/petsc/petsc.git petsc
    echo "configuring and building mpich."
    cd petsc
    ./configure # --with-cc=gcc --with-cxx=g++ --with-fc=gfortran --download-mpich
    make -j4
    make PETSC_DIR=$HOME/build/dbeat/numerical/petsc PETSC_ARCH=arch-linux2-c-debug check
    cd -
fi