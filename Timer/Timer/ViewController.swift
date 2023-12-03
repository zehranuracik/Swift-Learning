//
//  ViewController.swift
//  Timer
//
//  Created by Zehra Nur Açık on 14.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zamanLabel: UILabel!
    
    var timer = Timer()
    var kalanZaman = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        kalanZaman = 10
        zamanLabel.text = "Zaman: \(kalanZaman)"
    }


    @IBAction func baslatTiklandi(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFonksiyonu), userInfo: nil, repeats: true)
    }
    
    @objc func timerFonksiyonu(){
        zamanLabel.text = "Zaman: \(kalanZaman)"
        kalanZaman -= 1
        if kalanZaman == 0{
            zamanLabel.text = "Süre Bitti"
            timer.invalidate()
            kalanZaman = 10
        }
    }
}

