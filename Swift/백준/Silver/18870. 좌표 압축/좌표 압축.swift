let N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var dict = [Int:Int]()
var next = 0

for i in arr.sorted(){
    if dict[i] == nil {
        dict[i] = next
        next += 1
    }
}
for i in arr{
    print(dict[i]!, terminator:" ")
}