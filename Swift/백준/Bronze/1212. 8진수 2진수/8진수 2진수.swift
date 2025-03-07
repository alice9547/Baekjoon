import Foundation

if let input = readLine() {
    let binaryTable = ["000", "001", "010", "011", "100", "101", "110", "111"]
    var result = [String]()

    for (index, char) in input.enumerated() {
        let num = Int(String(char))!
        if index == 0 {
            result.append(String(num, radix: 2)) // 첫 번째 숫자는 그대로 변환
        } else {
            result.append(binaryTable[num]) // 미리 계산된 테이블 활용
        }
    }

    print(result.joined()) // 문자열 연결 최적화
}