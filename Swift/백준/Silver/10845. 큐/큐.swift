import Foundation

var result = [String]()

for _ in 0..<Int(String(readLine()!))! {
    let command = readLine()!
    
    switch command{
        
    case "pop":
        print(result.isEmpty ? "-1" : result.removeFirst())
    case "size":
        print(result.count)
    case "empty":
        print(result.isEmpty ? "1" : "0")
    case "front":
        print( result.first ?? "-1")
    case "back":
        print(result.last ?? "-1")
    default:
        if let num = Int(command.components(separatedBy: " ")[1]) {
            result.append(String(num))
        }
    }
}
