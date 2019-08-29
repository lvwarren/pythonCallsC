""" Example of wrapping a C function that takes C double arrays as input using the Numpy declarations from Cython """

# cimport the Cython declarations for numpy
cimport numpy as np

# if you want to use the Numpy-C-API from Cython
np.import_array()

cdef extern from "vmath_src.h":
    void Sqrt(double * in_array, double * out_array, int size)

cdef extern from "vmath_src.h":
    void Sin (double * in_array, double * out_array, int size)

cdef extern from "vmath_src.h":
    void Cos (double * in_array, double * out_array, int size)

cdef extern from "vmath_src.h":
    void Tan (double * in_array, double * out_array, int size)

cdef extern from "math.h":
    double sqrt(double arg)

cdef extern from "math.h":
    double sin(double arg)

cdef extern from "math.h":
    double cos(double arg)

cdef extern from "math.h":
    double tan(double arg)

def Sqrt_(np.ndarray[double, ndim=1, mode="c"] in_array not None, np.ndarray[double, ndim=1, mode="c"] out_array not None):
    Sqrt(<double*> np.PyArray_DATA(in_array), <double*> np.PyArray_DATA(out_array), in_array.shape[0])

def Sin_(np.ndarray[double, ndim=1, mode="c"] in_array not None, np.ndarray[double, ndim=1, mode="c"] out_array not None):
    Sin(<double*> np.PyArray_DATA(in_array), <double*> np.PyArray_DATA(out_array), in_array.shape[0])

def Cos_(np.ndarray[double, ndim=1, mode="c"] in_array not None, np.ndarray[double, ndim=1, mode="c"] out_array not None):
    Cos(<double*> np.PyArray_DATA(in_array), <double*> np.PyArray_DATA(out_array), in_array.shape[0])

def Tan_(np.ndarray[double, ndim=1, mode="c"] in_array not None, np.ndarray[double, ndim=1, mode="c"] out_array not None):
    Tan(<double*> np.PyArray_DATA(in_array), <double*> np.PyArray_DATA(out_array), in_array.shape[0])

def sqrt_(arg):
    return sqrt(arg)

def sin_(arg):
    return sin(arg)

def cos_(arg):
    return cos(arg)

def tan_(arg):
    return tan(arg)
