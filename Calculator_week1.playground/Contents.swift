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
    func operate(a: Int, b: Int) -> Int? {  // 옵셔널 타입(Int?)으로 반환, 명확한 예외 처리
        guard !(a == 0 && b == 0) || b != 0 else { // guard 문법 사용하여 예외 조건 처리 (0으로 나누기 불가)
            return nil // 예외 발생 시 nil 반환
        }
        return a / b
    }
}

class RemainderOperation {
    func operate(a: Int, b: Int) -> Int? {
        guard !(a == 0 && b == 0) && b != 0 else {
            return nil
        }
        return a % b
    }
}
// 최종적으로 연산 클래스를 합쳐서 사용하는 Calculator 클래스 정의
class Calculator {
    let addOperation = AddOperation()
    let subtractOperation = SubtractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    let remainderOperation = RemainderOperation()

    func add(a: Int, b: Int) -> Int {
        return addOperation.operate(a: a, b: b)
    }
    func subtract(a: Int, b: Int) -> Int {
        return subtractOperation.operate(a: a, b: b)
    }
    func multiply(a: Int, b: Int) -> Int {
        return multiplyOperation.operate(a: a, b: b)
    }
    func divide(a: Int, b: Int) -> Int { // 옵셔널 바인딩(guard let)을 통해 nil 체크
        guard let result = divideOperation.operate(a: a, b: b) else {
            return 0
        }
        return result
    }
    func remainder(a: Int, b: Int) -> Int {
        guard let result = remainderOperation.operate(a: a, b: b) else {
            return 0
        }
        return result
    }
}
// Calculator 클래스의 인스턴스를 생성하여 calculator라는 상수에 저장
let calculator = Calculator()

let addResult = calculator.add(a: 3, b: 4)
print(addResult)
let subtractResult = calculator.subtract(a: 3, b: 4)
print(subtractResult)
let multiplyResult = calculator.multiply(a: 3, b: 4)
print(multiplyResult)
let divideResult = calculator.divide(a: 0, b: 0)
print(divideResult)
let remainderResult = calculator.remainder(a: 3, b: 0)
print(remainderResult)
