#!/usr/bin/python3

import consumer_python
import producer_python

producer_python.py_produce_simple()
consumer_python.py_consume_simple()

x = producer_python.py_produce()
consumer_python.py_consume(x)
consumer_python.py_consume(x)
x = producer_python.py_produce()
consumer_python.py_consume(x)
producer_python.py_produce()
producer_python.py_produce()
x = producer_python.py_produce()
consumer_python.py_consume(x)

