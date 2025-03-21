let N = Int(readLine()!)!
var arr = [Int](repeating:0,count:N)
for i in 0..<N{
    arr[i] = Int(readLine()!)!
}

for i in arr.sorted(){
    print(i)
}