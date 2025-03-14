import UIKit

class AddOperation {
    func add(a: Int, b: Int) -> Int {
        return a + b
    }
}

class SubtractOperation {
    func subtract(a: Int, b: Int) -> Int {
        return a - b
    }
}

class MultiplyOperation {
    func multiply(a: Int, b: Int) -> Int {
        return a * b
    }
}
// 나눗셈 연산 클래스 (예외 처리를 위해 옵셔널을 사용한 메서드)
class DivideOperation {
    func divide(a: Int, b: Int) -> Int? {
        guard b != 0 else { // 나누는 수(b)가 0이면 예외 처리 (guard 문법을 사용하여 nil 반환)
            return nil
        }
        return a / b
    }
}

class RemainderOperation {
    func remainder(a: Int, b: Int) -> Int? {
        guard b != 0 else {
            return nil
        }
        return a % b
    }
}

class Calculator {  // 개별 연산을 담당하는 클래스들을 인스턴스화하여 속성으로 선언
    let addOperation = AddOperation()
    let subtractOperation = SubtractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    let remainderOperation = RemainderOperation()
}

let calculator = Calculator()
// 메서드 직접 호출 및 결과 출력 (Calculator 클래스가 아닌 AddOperation 클래스 직접 접근 방식 사용)
print(calculator.addOperation.add(a: 3, b: 2))
print(calculator.subtractOperation.subtract(a: 3, b: 2))
print(calculator.multiplyOperation.multiply(a: 3, b: 2))
print(calculator.divideOperation.divide(a: 2, b: 0) ?? 0)
print(calculator.remainderOperation.remainder(a: 3, b: 0) ?? 0)
