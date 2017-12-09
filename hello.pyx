# cpdef - because I want to be able to access it in
# an external python file
cpdef say_hello(name):
	print('Hello, {}!'.format(name))


cdef int a = 0
cdef int i
for i in range(10):
		a += i
print(a)
