//
//  ViewController.swift
//  Turkiye
//
//  Created by Zehra Nur Açık on 14.10.2023.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    var sehirDizisi = [Sehir]()
    var kullaniciSecimi : Sehir?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let istanbul = Sehir(sehirIsmi: "İstanbul", sehirBolgesi: "Marmara", sehirGorseli: UIImage(named: "istanbul")!)
        let izmir = Sehir(sehirIsmi: "İzmir", sehirBolgesi: "Ege", sehirGorseli: UIImage(named: "izmir")!)
        let sivas = Sehir(sehirIsmi: "Sivas", sehirBolgesi: "İç Anadolu", sehirGorseli: UIImage(named: "sivas")!)
        let trabzon = Sehir(sehirIsmi: "Trabzon", sehirBolgesi: "Karadeniz", sehirGorseli: UIImage(named: "trabzon")!)
        let diyarbakir = Sehir(sehirIsmi: "Diyarbakır", sehirBolgesi: "Güneydoğu Anadolu", sehirGorseli: UIImage(named: "diyarbakir")!)
        let malatya = Sehir(sehirIsmi: "Malatya", sehirBolgesi: "Doğu Anadolu", sehirGorseli: UIImage(named: "malatya")!)
        let hatay = Sehir(sehirIsmi: "Hatay", sehirBolgesi: "Akdeniz", sehirGorseli: UIImage(named: "hatay")!)
        
        sehirDizisi = [istanbul,izmir,sivas,trabzon,diyarbakir,malatya,hatay]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirDizisi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = sehirDizisi[indexPath.row].sehirIsmi
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        kullaniciSecimi = sehirDizisi[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.secilenSehir = kullaniciSecimi
        }
    }

}

