let N = Int(readLine()!)!
var card = Array(1...N)
var front = 0
var back = card.count

while back-front != 1 {
    front += 1
    let first = card[front]
    front += 1
    card.append(first)
    back += 1
}
print(card[front])