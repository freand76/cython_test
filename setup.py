#!/usr/bin/python3

from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

examples_extension_producer = Extension(
    name="producer_python",
    sources=["producer_python.pyx"],
    libraries=["producer"],
    library_dirs=["."],
    include_dirs=["."]
)

examples_extension_consumer = Extension(
    name="consumer_python",
    sources=["consumer_python.pyx"],
    libraries=["consumer"],
    library_dirs=["."],
    include_dirs=["."]
)

setup(
    name="pyproducer",
    ext_modules=cythonize([examples_extension_producer, examples_extension_consumer])
)
