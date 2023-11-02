//
//  ViewController.swift
//  halloweencandyreview
//
//  Created by Kaci Koizumi on 10/31/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var dumDumsFeatImage: UIImageView!
    @IBOutlet weak var featCandyLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        featCandyLabel.text = "Dum Dums"
        backgroundImage.image = UIImage (named: "candy review cm161")
        dumDumsFeatImage.image = UIImage (named: "dumdums")
        self.navigationItem.title = "Kaci's Candy Review"
    }

    @IBAction func trickOrTreatButton(_ sender: Any)
    {
        

        
    }
    
}

