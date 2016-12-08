# sample.pyx

# Import the low-level C declarations
cimport csample


def init_model(val):
    return csample.init_model(val)

def ndf1():
    return csample.ndf1()

def ndf1_nogil():
    cdef int ret
    with nogil:
        ret = csample.ndf1_nogil()
    return ret