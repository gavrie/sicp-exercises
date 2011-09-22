number = 27

def f(n):
    if n < 3:
        return n
    else:
        return f(n-1) + 2*f(n-2) + 3*f(n-3)


def f2(n):
    if n < 3:
        return n
    a, b, c = 0, 1, 2
    count = n
    while count > 2:
        a, b, c = b, c, c + 2*b + 3*a
        count -= 1
    return c

print f(number)
print f2(number)
