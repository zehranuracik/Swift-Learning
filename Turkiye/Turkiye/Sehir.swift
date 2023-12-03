//
//  Sehir.swift
//  Turkiye
//
//  Created by Zehra Nur Açık on 14.10.2023.
//

import Foundation
import UIKit

class Sehir{
    var sehirIsmi : String
    var sehirBolgesi : String
    var sehirGorseli : UIImage
    
    init(sehirIsmi: String, sehirBolgesi: String, sehirGorseli: UIImage) {
        self.sehirIsmi = sehirIsmi
        self.sehirBolgesi = sehirBolgesi
        self.sehirGorseli = sehirGorseli
    }
}
