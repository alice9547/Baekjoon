//
//  Test.swift
//  BAEKJOON
//
//  Created by 김은서 on 3/7/25.
//

import Foundation

class Test {
    private func result() {
        var num = [3,1,4]
        var result = ""
        
        num.forEach({
            var num = $0
            while num <= 0 {
                num = num % 2
                result = result + String(num)
            }
        })
    }
}
