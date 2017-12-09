### PROGRAMMING FIBONACCI NUMBERS FROM BEGINNER TO EXPERT
import time


################################################################################################
# +———————————————————————————————————————————————————————————————————————————————————————————+
# | Method 1
# +———————————————————————————————————————————————————————————————————————————————————————————+
################################################################################################
print('Method: 1')
cdef fib_1(int no):
    series = [1, 1]
    for _ in range(1, no-1):
        series.append(series[-1] + series[-2])
    return series

n_sequence = int(input('How many fibonacci numbers should I generate for you: '))
start = time.time()
series = fib_1(n_sequence)
end = time.time()
print('Computation took {:.6f} seconds'.format(end-start))
print(series)

print(80*'-' + '\n') # For dividers and space


################################################################################################
# +———————————————————————————————————————————————————————————————————————————————————————————+
# | Method 2
# +———————————————————————————————————————————————————————————————————————————————————————————+
################################################################################################

print('Method: 2')
cdef int fib_2(int no):
    if no <= 2:
        return 1
    else:
        return fib_2(no-1) + fib_2(no-2)

n_sequence = int(input('How many fibonacci numbers should I generate for you: '))
start = time.time()
series = [fib_2(i) for i in range(1, n_sequence+1)]
end = time.time()
print('Computation took {:.6f} seconds'.format(end-start))
print(series)
### End of method 2

print(80*'-' + '\n') # For dividers and space

################################################################################################
# +———————————————————————————————————————————————————————————————————————————————————————————+
# | Method 3
# |   (Exponential time)
# +———————————————————————————————————————————————————————————————————————————————————————————+
################################################################################################

print('Method: 3')
cdef int fib_3(int no):
    cdef int f
    if no <= 2:
        f = 1
    else:
        f = fib_3(no-1) + fib_3(no-2)
    return f

n_sequence = int(input('How many fibonacci numbers should I generate for you: '))
start = time.time()
series = [fib_3(i) for i in range(1, n_sequence+1)]
end = time.time()
print('Computation took {:.6f} seconds'.format(end-start))
print(series)

print(80*'-' + '\n') # For dividers and space

################################################################################################
# +———————————————————————————————————————————————————————————————————————————————————————————+
# | Method 4
# |   [THE MOST OPTIMIAL METHOD] BUT Creepiest (Polynomial time)
# +———————————————————————————————————————————————————————————————————————————————————————————+
################################################################################################

print('Method: 4')
memo = {}
cdef int fib_4(int no):
    cdef int f
    if no in memo:
        return memo[no]
    if no <= 2:
        f = 1
    else:
        f = fib_4(no-1) + fib_4(no-2)
    memo[no] = f
    return f

n_sequence = int(input('How many fibonacci numbers should I generate for you: '))
start = time.time()
series = [fib_4(i) for i in range(1, n_sequence+1)]
end = time.time()
print('Computation took {:.6f} seconds'.format(end-start))
print(series)
### End of method 4


print(80*'-' + '\n') # For dividers and space
