//
//  ViewController.swift
//  CityPromotion
//
//  Created by Hasan Hazırbulan on 9.08.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    
    @IBOutlet weak var tableView: UITableView!
    
    var sehirDizisi = [Sehir]()
    var kullaniciSecimi : Sehir?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // sehirler
        
        let newyork = Sehir(isim: "New York", ulke: "United States", gorsel: UIImage(named: "new york")!)
        
        let tokyo = Sehir(isim: "Tokyo", ulke: "Japan", gorsel: UIImage(named: "tokyo")!)
        
        let buenosaires = Sehir(isim: "Buenos Aires", ulke: "Argentina", gorsel: UIImage(named: "buenos aires")!)
        
        let losangeles = Sehir(isim: "Los Angeles", ulke: "United States", gorsel: UIImage(named: "los angeles")!)
        
        let london = Sehir(isim: "London", ulke: "England", gorsel: UIImage(named: "london")!)
        
        sehirDizisi = [newyork, tokyo, buenosaires, losangeles, london]
        
    }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return sehirDizisi.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell()
            cell.textLabel?.text = sehirDizisi[indexPath.row].isim
            return cell
        
        }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        kullaniciSecimi = sehirDizisi[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! toDetailsViewController
            destinationVC.secilenSehir = kullaniciSecimi
            
        }
            
    }
    
    }

