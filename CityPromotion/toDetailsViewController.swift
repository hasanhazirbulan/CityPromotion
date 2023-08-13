//
//  toDetailsViewController.swift
//  CityPromotion
//
//  Created by Hasan Hazırbulan on 9.08.2023.
//

import UIKit

class toDetailsViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var sehirIsmiLabel: UILabel!
    
    @IBOutlet weak var sehirBolgesiLabel: UILabel!
    
    var secilenSehir : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //test branch dneme
        sehirIsmiLabel.text = secilenSehir?.isim
        sehirBolgesiLabel.text = secilenSehir?.ulke
        imageView.image = secilenSehir?.gorsel
        
        // Do any additional setup after loading the view.
        
    }
    
    
}
