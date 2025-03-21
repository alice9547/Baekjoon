import Foundation

var result = [String]()

for _ in 0..<Int(readLine()!)! {
    let cmd = readLine()!.split(separator: " ").map{String($0)}
    
    switch cmd[0] {
    case "push_front":
        result.insert(cmd[1], at: 0)
    case "push_back":
        result.append(cmd[1])
    case "pop_front":
        print(result.isEmpty ? "-1" : result.removeFirst())
    case "pop_back":
        print(result.isEmpty ? "-1" : result.removeLast())
    case "size":
        print(result.count)
    case "empty":
        print(result.isEmpty ? "1" : "0")
    case "front":
        print(result.first ?? "-1")
    case "back":
        print(result.last ?? "-1")
    default:
        break
    }
}