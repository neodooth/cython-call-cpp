# csample.pxd
#
# Declarations of "external" C functions and structures

cdef extern from "sample.h":
    int init_model(int)
    int ndf1()
    int ndf1_nogil() nogil