cdef extern from "common.h":
    ctypedef struct common_struct_t:
        int inc

cdef extern from "consumer.h":
     void consume_simple()
     void consume(common_struct_t)

def py_consume_simple() -> None:
    consume_simple()

def py_consume(x) -> None:
    consume(x)
