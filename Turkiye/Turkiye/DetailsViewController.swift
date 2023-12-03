//
//  DetailsViewController.swift
//  Turkiye
//
//  Created by Zehra Nur Açık on 14.10.2023.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var bolgeLabel: UILabel!
    
    var secilenSehir : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = secilenSehir?.sehirIsmi
        bolgeLabel.text = secilenSehir?.sehirBolgesi
        imageView.image = secilenSehir?.sehirGorseli
    }
    
    
}
