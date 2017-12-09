### PROGRAMMING FIBONACCI NUMBERS FROM BEGINNER TO EXPERT
import time


################################################################################################
# +———————————————————————————————————————————————————————————————————————————————————————————+
# | Method 1
# +———————————————————————————————————————————————————————————————————————————————————————————+
################################################################################################
print('Method: 1')
def fibonacci(no):
    series = [1, 1]
    for _ in range(1, no-1):
        series.append(series[-1] + series[-2])
    return series

n_sequence = input('How many fibonacci numbers should I generate for you: ')
start = time.time()
series = fibonacci(int(n_sequence))
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
def fib(no):
    if no <=2:
        return 1
    else:
        return fib(no-1) + fib(no-2)

n_sequence = input('How many fibonacci numbers should I generate for you: ')
start = time.time()
series = [fib(i) for i in range(1, int(n_sequence)+1)]
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
def fib(no):
    if no <= 2:
        f = 1
    else:
        f = fib(no-1) + fib(no-2)
    return f

n_sequence = input('How many fibonacci numbers should I generate for you: ')
start = time.time()
series = [fib(i) for i in range(1, int(n_sequence)+1)]
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
def fib(no):
    if no in memo:
        return memo[no]
    if no <= 2:
        f = 1
    else:
        f = fib(no-1) + fib(no-2)
    memo[no] = f
    return f

n_sequence = input('How many fibonacci numbers should I generate for you: ')
start = time.time()
series = [fib(i) for i in range(1, int(n_sequence)+1)]
end = time.time()
print('Computation took {:.6f} seconds'.format(end-start))
print(series)
### End of method 4


print(80*'-' + '\n') # For dividers and space
