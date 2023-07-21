//
//  Calculator.swift
//  Calculator
//
//  Created by 김지은 on 2023/07/17.
//

import Foundation


class Calculator {
    /*
            하나의 프로퍼티를 갖도록 초기화
        */
    var operation = AbstractOperation()
    
    init(operation: AbstractOperation = AbstractOperation()) {
        self.operation = operation
    }
    
    // 프로퍼티의 값을 변경하는 함수 구현
    
    func calculate(firstNumber: Double, secondNumber: Double) -> Double {
        // 프로퍼티 내부의 함수 실행
        return operation.operate(a: firstNumber, b: secondNumber)
    }
}
