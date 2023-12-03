//
//  ViewController.swift
//  SuperHeroBook
//
//  Created by Zehra Nur Açık on 14.10.2023.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    var superHeroNames = [String]()
    var superHeroImages = [String]()

    var selectedName = ""
    var selectedImage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        superHeroNames.append("Batman")
        superHeroNames.append("Superman")
        superHeroNames.append("Spiderman")
        superHeroNames.append("Iron Man")
        superHeroNames.append("Captain America")
        
        superHeroImages.append("batman")
        superHeroImages.append("superman")
        superHeroImages.append("spiderman")
        superHeroImages.append("ironman")
        superHeroImages.append("captain")
    }
    
    // numberOfRowInSection -> kaç tane row olacak
    // cellForRow atIndexPath -> hücrenin içerisinde neler gösterilecek
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superHeroNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superHeroNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete{
            superHeroNames.remove(at: indexPath.row)
            superHeroImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedName = superHeroNames[indexPath.row]
        selectedImage = superHeroImages[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedHeroName = selectedName
            destinationVC.selectedHeroImageName = selectedImage
        }
    }
}

