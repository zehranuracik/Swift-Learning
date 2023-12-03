//
//  SecondViewController.swift
//  MultipleViewController
//
//  Created by Zehra Nur Açık on 11.10.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondLabel: UILabel!
    
    @IBOutlet weak var bulunanSifreLabel: UILabel!
    
    var verilenSifre = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bulunanSifreLabel.text = verilenSifre
    }
    

}
