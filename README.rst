*********
NUMERICAL
*********
.. image:: https://app.codeship.com/projects/2734b900-f935-0137-e154-1aa3f3935b22/status?branch=master
    :target: https://codeship.com/projects/376946

.. image:: https://codecov.io/bb/frnsroy/numerical/branch/master/graph/badge.svg?token=NF9GwEfvqy
  :target: https://codecov.io/bb/frnsroy/numerical

- Licensed under MIT

A code used to showcase numerical methods in C++ using Eigen3.

Installation
############


1. cd numerical
2. mkdir build && cd build
3. cmake ..
4. make -j
5. make unittests (make tests)
6. ctest (test)
7. make valgrind
8. make doc (documentation)

To install valgrind from source:

.. code-block:: bash

  $ sudo apt-get install build-essential
  $ wget ftp://sourceware.org/pub/valgrind/valgrind-3.15.0.tar.bz2
  $ tar xjf valgrind-3.15.0.tar.bz2
  $ cd valgrind-3.15.0/
  $ ./configure --prefix=$HOME/.local
  $ make -j$(nproc)
  $ make install

Documentation available at: https://frnsroy.bitbucket.io/numerical/

