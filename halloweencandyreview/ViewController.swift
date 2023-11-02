//
//  ViewController.swift
//  halloweencandyreview
//
//  Created by Kaci Koizumi on 10/31/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        backgroundImage.image = UIImage (named: "candy review cm161")
        self.navigationItem.title = "Kaci's Candy Review"
    }

    @IBAction func trickOrTreatButton(_ sender: Any)
    {
        

        
    }
    
}

