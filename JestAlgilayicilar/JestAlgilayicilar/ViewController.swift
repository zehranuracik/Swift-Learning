//
//  ViewController.swift
//  JestAlgilayicilar
//
//  Created by Zehra Nur Açık on 13.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var ankara = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Kullanıcının imageview a müdahale edip edemeyeceğini söyler örn: resme tıklayınca aksiyon olması vs
        imageView.isUserInteractionEnabled = true
        
        // tıklama olayına aksiyon eklemek için kullanılır
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(gorselDegistir))
        
        // imageView a yukarda girdiğimiz gesture recognizer i tanımlar.
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func gorselDegistir(){
        
        if ankara == false{
            imageView.image = UIImage(named: "ankara")
            label.text = "Ankara"
            ankara = true
        }
        else{
            imageView.image = UIImage(named: "istanbul")
            label.text = "Istanbul"
            ankara = false
        }
    }
}

