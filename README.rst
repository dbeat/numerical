*********
NUMERICAL
*********
.. image:: https://travis-ci.com/dbeat/numerical.svg?branch=master
    :target: https://travis-ci.com/dbeat/numerical

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

