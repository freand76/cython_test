cdef extern from "producer.h":
     void produce_simple()

def py_produce_simple() -> None:
    produce_simple()
