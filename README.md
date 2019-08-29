
In this example we have a library of user provided 'C' code defined in:

vmath_src.c
vmath_src.h

This gets munged by cython into a useable library callable from this notebook.

Note: If you change these filenames by trimming the _src suffix, all hell breaks loose
      because cython needs the namespace for its own vmath.c

To prepare the library type the following into a bash shell:

make clean

make

Then run the Jupyter notebook (pythonCallsC.ipynb) in the usual manner.

You can also run the python file from bash:

python pythonCallsC
