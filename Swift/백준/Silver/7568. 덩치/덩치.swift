let n = Int(readLine()!)!
var arr = [(Int,Int)]()
var rank = 0
for _  in 0..<n{
    let xy = readLine()!.split(separator:" ").map{Int(String($0))!}
    arr.append((xy[0],xy[1]))
}
for i in arr{
    rank = arr.filter{i.0<$0.0 && i.1<$0.1}.count+1
    print(rank, terminator : " ")
}