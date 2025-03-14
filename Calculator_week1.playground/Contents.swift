import UIKit

class Calculator {
    func calculate(op: String, firstNumber: Double, secondNumber: Double) -> Double {
        switch op { // if-else 대신 연산자 비교를 switch-case 구문으로 변경
        case "+":
            let result = firstNumber + secondNumber
            print(result)
            return result
        case "-":
            let result = firstNumber - secondNumber
            print(result)
            return result
        case "*":
            let result = firstNumber * secondNumber
            print(result)
            return result
        case "/":
            if secondNumber == 0 { // 두 번째 숫자가 0인 경우 나누기 예외 처리
                print("Error: 0으로 나눌 수 없습니다")
                return 0
            }
            let result = firstNumber / secondNumber // 정상적 나누기 연산
            print(result)
            return result
        case "%":
            if secondNumber == 0 { // 나머지 연산 시 0 나누기 예외 처리
                print("Error: 나머지 연산에서 0으로 나눌 수 없습니다.")
                return 0 // 기본값 0 반환
            }
            let result = firstNumber.truncatingRemainder(dividingBy: secondNumber)
            print(result)
            return result
        default:
            print("Error: 잘못된 연산자입니다.")
            return 0
        }
    }
}
// Calculator 클래스의 인스턴스 생성
let calculator = Calculator()

calculator.calculate(op: "+", firstNumber: 2, secondNumber: 5)
calculator.calculate(op: "-", firstNumber: 10, secondNumber: 5)
calculator.calculate(op: "*", firstNumber: 3, secondNumber: 6)
calculator.calculate(op: "/", firstNumber: 8, secondNumber: 0) // 0 나누기 예외 처리 확인
calculator.calculate(op: "%", firstNumber: 4, secondNumber: 0) // 0 나머지 연산 예외 처리 확인
calculator.calculate(op: "ㅁ", firstNumber: 4, secondNumber: 2) // 잘못된 연산자 예외 처리 확인



