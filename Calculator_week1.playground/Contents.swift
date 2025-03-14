import UIKit

class AddOperation {
    func operate(a: Int, b: Int) -> Int {
        return a + b
    }
}

class SubtractOperation {
    func operate(a: Int, b: Int) -> Int {
        return a - b
    }
}

class MultiplyOperation {
    func operate(a: Int, b: Int) -> Int {
        return a * b
    }
}

class DivideOperation {
    func operate(a: Int, b: Int) -> Int? { // 옵셔널(Int?)을 반환하여 명확한 예외 처리
        if (a == 0 && b == 0) || b == 0 {  // 예외 조건 확인 (0 나누기 불가능)
            return nil   // 예외 발생 시 nil 반환 (명확한 예외 표현)
        }
        return a / b // 정상 연산 수행 후 반환
    }
}

class RemainderOperation {
    func operate(a: Int, b: Int) -> Int? {
        if (a == 0 && b == 0) || b == 0 {
            return nil
        }
        return a % b
    }
}

class Calculator {  // 각 연산 클래스의 인스턴스를 속성으로 생성하여 클래스 내부에서 사용
    let addOperation = AddOperation()
    let subtractOperation = SubtractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    let remainderOperation = RemainderOperation()

    func add(a: Int, b: Int) -> Int {
        return addOperation.operate(a: a, b: b)
    }

    func minus(a: Int, b: Int) -> Int {
        return subtractOperation.operate(a: a, b: b)
    }

    func multiply(a: Int, b: Int) -> Int {
        return multiplyOperation.operate(a: a, b: b)
    }

    func divide(a: Int, b: Int) -> Int { // 옵셔널 바인딩을 사용한 명확한 예외 처리 방법
        if let result = divideOperation.operate(a: a, b: b) {
            return result
        } else {
            return 0 // 예외 발생 시 기본값 0 반환
        }
    }

    func remainder(a: Int, b: Int) -> Int {
        if let result = remainderOperation.operate(a: a, b: b) {
            return result
        } else {
            return 0
        }
    }
}

let calculator = Calculator()

print("Add: \(calculator.add(a: 8, b: 2))")
print("Minus: \(calculator.minus(a: 12, b: 2))")
print("Multiply: \(calculator.multiply(a: 2, b: 5))")
print("Divide: \(calculator.divide(a: 8, b: 0))")
print("Remainder: \(calculator.remainder(a: 10, b: 5))")
