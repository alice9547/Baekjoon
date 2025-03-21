var x = readLine()!.split(separator:" ").map { Int($0)! }
if x[1] >= 45 {
    print("\(x[0]) \(x[1] - 45)")
} else {
    if x[0] != 0 {
        print("\(x[0]-1) \(x[1] + 15)")
    } else {
        print("23 \(x[1]+15)")
    }
}
