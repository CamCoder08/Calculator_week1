# 1주차 과제 : Calculator 실습과제 프로젝트

## 프로젝트 소개

이 프로젝트는 간단한 계산 기능을 수행하는 iOS 앱 개발 실습 과제로, 총 7개의 플레이그라운드를 거쳐 점진적으로 코드가 개선되었다. 기본적인 사칙연산부터 시작하여 코드의 구조화, 예외 처리, 옵셔널 사용까지 점진적으로 발전시키며 Swift 문법과 객체지향 프로그래밍(OOP)의 원칙을 학습했다.

## 작업 과정 및 개선 사항

### 1단계: 기본 계산기 로직 구현

- 하나의 클래스(Calculator)에 Double 타입의 숫자를 받아 사칙연산 처리
- 기본적인 산술 연산 기능을 if-else 문을 통해 간단히 구현
- 연산자(+, -, *, /) 사용
- 예외 처리 미비: 0으로 나누기 및 나머지 연산 관련 예외 처리 필요
- 가독성과 유지보수성 부족으로 개선 필요성 대두

### 2단계: switch-case 도입 및 예외처리 추가

- if-else 문을 switch-case 문으로 변경하여 연산자 판별의 가독성 향상
- 나누기 및 나머지 연산 시 0으로 나누는 경우 예외 처리(print 메시지 출력 및 기본값 반환)
- truncatingRemainder 사용하여 Double 타입의 나머지 연산 수행
- 잘못된 연산자 입력 시 명확한 에러 메시지 출력

### 3단계: 연산별 메서드로 분리

- 각 연산(덧셈, 뺄셈, 곱셈, 나눗셈, 나머지)을 별도 메서드로 분리하여 단일 책임 원칙(SRP) 적용
- 연산 메서드 네이밍 방식 변경 (getAdd, getMinus 등)
- 각 메서드 내부에서 명확한 예외 처리(0으로 나누기 시 메시지 출력 및 기본값 반환)
- 클래스 이름 오타 발생(Caculate)하여 이후 수정 필요

### 4단계: 반환 타입 변경 및 예외 메시지 명확화

- 반환 타입을 명확한 예외 메시지 출력을 위해 Int에서 String으로 변경
- 예외 상황 시("0 입력 오류")를 사용자에게 명시적으로 전달하여 혼란 방지
- 클래스 이름 철자 오타 유지(Caculator) → 다음 단계 수정 예정
- 인스턴스를 곧바로 호출하여 사용 방법 간소화
- 그러나 타입 일관성 부족으로 추가적인 개선 필요

### 5단계: 연산별 클래스로 완전 분리 및 옵셔널 적용

- 연산별 독립 클래스를 생성하여 코드의 유지보수성과 가독성 향상
  - AddOperation, SubtractOperation, MultiplyOperation, DivideOperation, RemainderOperation 클래스 생성
- 반환 타입을 다시 Int로 통일하고, 예외 처리 시 옵셔널(Int?)을 적용하여 명확한 예외 처리
- 옵셔널 바인딩(if let)을 사용해 예외 처리 방식 명확화

### 6단계: guard 문법 적용 및 네이밍 통일

- guard 문법을 사용하여 보다 깔끔하고 명확한 예외 처리 구현
- 연산 메서드 이름을 operate로 통일하여 일관성 확보
- 하지만 guard 조건이 복잡하여 추가적으로 간소화할 필요성 발견

### 7단계 (최종): 메서드 이름 직관적 변경 및 guard 조건 간소화

- 메서드 이름을 직관적으로 변경(add, subtract, multiply, divide, remainder)
- guard 조건 간소화하여 나누는 값이 0인지 여부만 체크
- 최종적으로 코드의 가독성과 유지보수성 높임
- 연산 클래스를 Calculator 클래스 내부에서 직접 호출하는 형태로 변경하여 캡슐화 강화 권장

## 사용된 Swift 문법 및 기술

- 클래스 및 인스턴스 활용
- 조건문(if-else, switch-case)
- 연산자(+, -, *, /, %)
- 옵셔널(Int?)과 옵셔널 바인딩(if let, guard let)을 통한 명확한 예외 처리
- 객체지향 설계 (단일 책임 원칙, 클래스 분리)

## 향후 개선 방향

- 클래스 이름 오타 수정(Caculator → Calculator)
- 예외 처리 방식에 Error 타입 사용하여 명확성 강화
- 사용자 입력 방식(UI)을 추가하여 실제 앱 형태로 확장 가능


