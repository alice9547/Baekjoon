let n = readLine()!.map{String($0)}

for i in 0..<n.count{
    if i % 10 == 9{
        print(n[i])
    }
    else{
        print(n[i],terminator:"")
    }
}