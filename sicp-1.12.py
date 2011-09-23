# Pascal's triangle

def pascal(n):
    if n == 1:
        return [1]
    else:
        prev = pascal(n - 1)
        return [1] + [prev[i] + prev[i+1] for i in range(0, n - 2)] + [1]

for i in range(5):
    print pascal(i+1)
