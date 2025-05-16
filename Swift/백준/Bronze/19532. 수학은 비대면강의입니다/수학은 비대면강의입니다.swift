let cmd = readLine()!.split(separator: " ").map {Int($0)!}
let a = cmd[0], b = cmd[1], c = cmd[2], d = cmd[3], e = cmd[4], f = cmd[5]

let x = (e*c-b*f) / (a*e-b*d)
let y = (a*f-d*c) / (a*e-b*d)
print("\(x) \(y)")