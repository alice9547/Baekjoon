n, m = map(int, input().split())
x = [0] * n

for _ in range(m):
    
    i,j,k = map(int, input().split())
    x[i-1:j] = [k] * (j-i+1)

print(*x)