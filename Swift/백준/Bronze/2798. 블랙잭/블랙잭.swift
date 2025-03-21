let NM = readLine()!.split(separator:" ").map{Int(String($0))!}
let card = readLine()!.split(separator:" ").map{Int(String($0))!}
var arr = [Int]()

for i in 0..<NM[0]{
    for j in i+1..<NM[0]{
        for k in j+1..<NM[0]{
            arr.append(card[i]+card[j]+card[k])
        }
    }
}
print(arr.filter{$0 <= NM[1]}.max()!)