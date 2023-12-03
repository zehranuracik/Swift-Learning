//
//  ViewController.swift
//  MultipleViewController
//
//  Created by Zehra Nur Açık on 11.10.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var textfield: UITextField!
    
    var alinanSifre = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        textfield.text = ""
        firstLabel.text = "First View Controller"
    }

    @IBAction func controlClicked(_ sender: Any) {
        
        alinanSifre = textfield.text!
        
        if alinanSifre == "zehra"{
            performSegue(withIdentifier: "toSecondVC", sender: nil)

        } else {
            
            firstLabel.text = "Şifreniz Yanlış"
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSecondVC" {
            
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.verilenSifre = alinanSifre
        }
    }
}

