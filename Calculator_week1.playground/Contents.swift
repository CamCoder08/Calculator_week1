import UIKit

class Caculator {
    func add(a: Int, b: Int) -> Int {
        return a + b
    }
    func minus(a: Int, b: Int) -> Int {
        return a - b
    }

    func multiply(a: Int, b: Int) -> Int {
        return a * b
    }

    func divide(a: Int, b: Int) -> String { // (결과를 String으로 반환하여 명확한 예외처리 메시지 전달)
        if (a == 0 && b == 0) || b == 0 {  // 나누는 수(b)가 0일 경우 예외처리 (0 나누기 불가능)
            return "Error 0 입력 오류" // 예외 처리 시 오류메시지를 문자열로 반환
        } else {
            return "\(a / b)" // 정상적 계산 후 결과를 문자열로 변환하여 반환 (문자열 보간법 "\()" 사용)
        }
    }

    func remainder(a: Int, b: Int) -> String {
        if (a == 0 && b == 0) || b == 0 {
            return "Error: 0 입력 오류"
        } else {
            return "\(a % b)"
        }
    }

}
// 인스턴스를 곧바로 result에 저장
let resultAdd = Caculator().add(a: 8, b: 2)
print("Add: \(resultAdd)")

let resultMinus = Caculator().minus(a: 12, b: 2)
print("Minus: \(resultMinus)")

let resultMultiply = Caculator().multiply(a: 2, b: 5)
print("Multiply: \(resultMultiply)")

let resultDivide = Caculator().divide(a: 20, b: 2)
print("Divide: \(resultDivide)")

let resultRemainder = Caculator().remainder(a: 10, b: 5)
print("Remainder: \(resultRemainder)")
