a = int(input())
b = int(input())
c = int(input())
result = list(str(a * b * c))
re = [0] * 10

for i in result:
    re[int(i)] += 1

for i in range(0,10):
    print(re[i], end = '\n')
