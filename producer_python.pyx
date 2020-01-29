cimport common_python

cdef extern from "producer.h":
     void produce_simple()
     common_python.common_struct_t produce()

def py_produce_simple() -> None:
    produce_simple()

def py_produce() -> common_python.common_struct_t:
    x = produce()
    return x
