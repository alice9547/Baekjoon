x = list(range(1,31))

for _ in range(28):
    x.remove(int(input()))

print(*x)