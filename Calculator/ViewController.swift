//
//  ViewController.swift
//  Calculator
//
//  Created by 김지은 on 2023/07/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblResult: UILabel! // 결과값 Label
    
    //MARK: button
    @IBOutlet weak var btnReset: UIButton! // 초기화 button
    @IBOutlet weak var btnSign: UIButton! // 부호 변경 button
    @IBOutlet weak var btnPercent: UIButton! // 퍼센트 button
    @IBOutlet weak var btnDivide: UIButton! // 나누기 button
    @IBOutlet weak var btnTimes: UIButton! // 곱하기 button
    @IBOutlet weak var btnMinus: UIButton! // 빼기 button
    @IBOutlet weak var btnPlus: UIButton! // 더하기 button
    @IBOutlet weak var btnEqualSign: UIButton! // 등호 button
    /// 숫자 버튼
    @IBOutlet weak var btnZero: UIButton! // 0 button
    @IBOutlet weak var btnOne: UIButton! // 1 button
    @IBOutlet weak var btnTwo: UIButton! // 2 button
    @IBOutlet weak var btnThree: UIButton! // 3 button
    @IBOutlet weak var btnFour: UIButton! // 4 button
    @IBOutlet weak var btnFive: UIButton! // 5 button
    @IBOutlet weak var btnSix: UIButton! // 6 button
    @IBOutlet weak var btnSeven: UIButton! // 7 button
    @IBOutlet weak var btnEight: UIButton! // 8 button
    @IBOutlet weak var btnNine: UIButton! // 9 button
    @IBOutlet weak var btnPoint: UIButton! // . button
    
    var numb: Double = 0
    var carculationNumb: Double = 0
    var resultOfCarculator: String = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }

    @IBAction func numberButtonPressed(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            lblResult.text = ""
            lblResult.text?.append(sender.titleLabel?.text ?? "")
        case 2:
            lblResult.text = "0."
            lblResult.text?.append(sender.titleLabel?.text ?? "")
        case 3:
            lblResult.text = ""
        default:
            break
        }
    }
    
    
    @IBAction func calculatorButtonPressed(_ sender: UIButton) {
        resultOfCarculator = String(Calculator.shared.whatTypeNumbers(mainNumb: numb, calculationNumb: carculationNumb, type: sender.tag))
    }
    
    
    @IBAction func resultButtonPressed(_ sender: Any) {
        lblResult.text = resultOfCarculator
    }
}

