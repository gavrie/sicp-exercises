# Pascal's triangle

def pascal(n):
    result = [1]
    if n == 1:
        return result
    else:
        prev = pascal(n-1)
        for i in range(0, len(prev) - 1):
            result.append(prev[i] + prev[i+1])
        result.append(1)
        return result

for i in range(5):
    print pascal(i+1)
