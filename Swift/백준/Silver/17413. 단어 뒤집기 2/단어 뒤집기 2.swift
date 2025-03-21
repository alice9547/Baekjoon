import Foundation

var array: [Character] = Array(readLine()!)
var tag = false
var result = ""
var word = ""

for i in array {
    if i == "<" {
        tag = true
        result += word.reversed()
        result += String(i)
        word = ""
    } else if i == ">" {
        tag = false
        word = ""
        result += String(i)
    } else if tag == true {
        result += String(i)
    } else if i == " " {
        result += word.reversed()
        word = ""
        result += String(i)
    } else {
        word += String(i)
    }
}

result += word.reversed()

print(result)
