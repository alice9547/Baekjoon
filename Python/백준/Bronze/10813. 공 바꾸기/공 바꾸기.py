n, m = map(int, input().split())
x = list(range(1, n+1))

for _ in range(m):
    i,j = map(int, input().split())
    x[i-1], x[j-1] = x[j-1], x[i-1]

print(*x)