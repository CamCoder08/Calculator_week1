import UIKit

class Caculate {
    func getAdd(a: Double, b: Double) -> Double {
        return a + b
    }

    func getMinus(a: Double, b: Double) -> Double {
        return a - b
    }

    func getMultiply(a: Double, b: Double) -> Double {
        return a * b
    }

    func getDivide(a: Double, b: Double) -> Double {
        if b == 0 { // 두 번째 숫자(b)가 0일 경우 예외 처리
            print("Error: 0으로 나눌 수 없습니다.")
            return 0
        }
        return a / b
    }

    func getRemainder(a: Double, b: Double) -> Double { // Double형으로 나머지를 계산 (Double형에서는 % 연산자 사용 불가능)
        if b == 0 {
            print("Error: 나머지 연산에서 0으로 나눌 수 없습니다.") // 예외 처리
            return 0
        }
        return a.truncatingRemainder(dividingBy: b)
    }  // truncatingRemainder 메서드로 Double 타입 나머지 연산 수행
}

let caculate = Caculate()

let getAddResult = caculate.getAdd(a: 2, b: 5)
print("Add Result: \(getAddResult)")
let getMinusResult = caculate.getMinus(a: 10, b: 5)
print("Minus Result: \(getMinusResult)")
let getMultiplyResult = caculate.getMultiply(a: 3, b: 6)
print("Multiply Result: \(getMultiplyResult)")
let getDivideResult = caculate.getDivide(a: 8, b: 0) // 0 나누기 예외 처리 확인
print("Divide Result: \(getDivideResult)")
let getRemainderResult = caculate.getRemainder(a: 4, b: 0) // 0 나머지 연산 예외 처리 확인
print("Remainder Result: \(getRemainderResult)")
