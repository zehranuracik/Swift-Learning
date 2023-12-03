//
//  ViewController.swift
//  DortIslemUygulamasi
//
//  Created by Zehra Nur Açık on 3.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumber: UITextField!
    
    @IBOutlet weak var secondNumber: UITextField!
    
    @IBOutlet weak var answer: UILabel!
    
    var ans = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addClicked(_ sender: Any) {
        if let firstNum  = Int(firstNumber.text!){
            if let secondNum = Int(secondNumber.text!){
                ans = firstNum+secondNum
                answer.text = String(ans)
            }
        }
    }
    
    @IBAction func subtractClicked(_ sender: Any) {
        if let firstNum  = Int(firstNumber.text!){
            if let secondNum = Int(secondNumber.text!){
                ans = firstNum-secondNum
                answer.text = String(ans)
            }
        }
    }
    
    @IBAction func multiplyClicked(_ sender: Any) {
        if let firstNum  = Int(firstNumber.text!){
            if let secondNum = Int(secondNumber.text!){
                ans = firstNum*secondNum
                answer.text = String(ans)
            }
        }
    }
    
    @IBAction func divideClicked(_ sender: Any) {
        if let firstNum  = Int(firstNumber.text!){
            if let secondNum = Int(secondNumber.text!){
                ans = firstNum/secondNum
                answer.text = String(ans)
            }
        }
    }
}

