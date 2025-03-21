var result = [Int]()
for i in 1...Int(readLine()!)!{
    result.append(i)
}
print(result.reduce(0,+))