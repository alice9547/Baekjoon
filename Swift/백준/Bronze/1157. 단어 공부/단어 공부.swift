var x = Array(readLine()!).map{$0.uppercased()}
var counter = [String: Int]()
x.forEach { counter[$0, default: 0] += 1}
let sorted = counter.sorted { 
    if $0.1 == $1.1 {
        return $0.0 > $1.0
}
    return $0.1 > $1.1 
}
if sorted.count > 1 {
    if (sorted[0].value == sorted[1].value) {
        print("?")
    } else {
        print(sorted[0].key)
    }
} else {
    print(sorted[0].key)
}