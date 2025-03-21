func fact(num:Int) -> Int{
    if num == 0 {
        return 0
    } else if num == 1{
        return 1
    }
    let result = fact(num:num-1)+fact(num:num-2)
    return result
}
print(fact(num:Int(readLine()!)!))