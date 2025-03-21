_, x = map(int, input().split())
a = filter(lambda n : n < x, list(map(int, input().split())))

print(*a)