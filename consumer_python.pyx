cimport common_python

cdef extern from "consumer.h":
     void consume_simple()
     void consume(common_python.common_struct_t)

def py_consume_simple() -> None:
    consume_simple()

def py_consume(x) -> None:
    consume(x)
