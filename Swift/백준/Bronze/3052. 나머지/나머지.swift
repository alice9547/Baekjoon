var list = Set<Int>()
for _ in 0..<10 {
    list.insert(Int(readLine()!)!%42)
}
print(list.count)