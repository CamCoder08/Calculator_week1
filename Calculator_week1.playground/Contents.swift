import UIKit

class Calculator { // 계산기라는 설계도 생성
    func calculate(op: String, firstNumber: Double, secondNumber: Double) -> Double { // 더욱 세밀한 값을 위해 Double 타입 반환
        if op == "+" {
            return firstNumber + secondNumber
        } else if op == "-" {
            return firstNumber - secondNumber
        } else if op == "*" {
            return firstNumber * secondNumber
        } else if op == "/" {
            return firstNumber / secondNumber
        } else {
            return 0 // 잘못된 연산자가 입력될 경우 기본적으로 0을 반환
        }
    }
}
// Calculator 클래스의 인스턴스를 생성
let calculator = Calculator()

calculator.calculate(op: "+", firstNumber: 2, secondNumber: 5)
calculator.calculate(op: "-", firstNumber: 10, secondNumber: 5)
calculator.calculate(op: "*", firstNumber: 3, secondNumber: 6)
calculator.calculate(op: "/", firstNumber: 8, secondNumber: 2)
