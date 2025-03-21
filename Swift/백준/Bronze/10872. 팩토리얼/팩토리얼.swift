func fact(num:Int) -> Int{
    if num == 0{
        return 1
    }
    return num * fact(num:num-1)
}
print(fact(num:Int(readLine()!)!))