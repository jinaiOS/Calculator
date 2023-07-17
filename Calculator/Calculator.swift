//
//  Calculator.swift
//  Calculator
//
//  Created by 김지은 on 2023/07/17.
//

import Foundation


class Calculator {
    
    static var shared = Calculator()
    
    var resultOfCalculator: Double = 0
    
    func whatTypeNumbers(mainNumb: Double, calculationNumb: Double, type: Int) -> Double {
        switch type {
        case 9:
            resultOfCalculator = plusNumbers(mainNumb: mainNumb, calculationNumb: calculationNumb)
        case 8:
            resultOfCalculator = minusNumbers(mainNumb: mainNumb, calculationNumb: calculationNumb)
        case 6:
            resultOfCalculator = divideNumbers(mainNumb: mainNumb, calculationNumb: calculationNumb)
        case 7:
            resultOfCalculator = timesNumbers(mainNumb: mainNumb, calculationNumb: calculationNumb)
        default:
            break
        }
        return resultOfCalculator
    }
    
    func plusNumbers(mainNumb: Double, calculationNumb: Double) -> Double {
        return mainNumb + calculationNumb
    }
    
    func minusNumbers(mainNumb: Double, calculationNumb: Double) -> Double {
        return mainNumb - calculationNumb
    }
    
    func divideNumbers(mainNumb: Double, calculationNumb: Double) -> Double {
        return mainNumb / calculationNumb
    }
    
    func timesNumbers(mainNumb: Double, calculationNumb: Double) -> Double {
        return mainNumb * calculationNumb
    }
}
