from distutils.core import setup
from Cython.Build import cythonize

setup(
    name='Hello cython', 
    ext_module=cythonize('hello.pyx')
)
