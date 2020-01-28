cdef extern from "common.h":
    ctypedef struct common_struct_t:
        int inc

cdef extern from "producer.h":
     void produce_simple()
     common_struct_t produce()

def py_produce_simple() -> None:
    produce_simple()

def py_produce() -> common_struct_t:
    x = produce()
    return x
