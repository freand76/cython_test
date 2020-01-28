cdef extern from "consumer.h":
     void consume_simple()

def py_consume_simple() -> None:
    consume_simple()
