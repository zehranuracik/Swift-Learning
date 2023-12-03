//
//  DetailsViewController.swift
//  SuperHeroBook
//
//  Created by Zehra Nur Açık on 14.10.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var selectedHeroName = ""
    var selectedHeroImageName = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: selectedHeroImageName)
        label.text = selectedHeroName
    }
}
