for i in range(int(input())):
    l = list(map(int, input().split()))

    avg = sum(l[1:]) / l[0]
    
    
    print("%.3f%%"%(sum([1 for j in l[1:] if j>avg])/l[0]*100))