var total = Int(readLine()!)!
var result = 0

for _ in 0..<Int(readLine()!)! {
    result += readLine()!.split(separator: " ").map {Int($0)!}.reduce(1, *)
}
print(result == total ? "Yes" : "No")