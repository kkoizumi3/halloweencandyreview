//
//  thirdViewController.swift
//  halloweencandyreview
//
//  Created by Kaci Koizumi on 10/31/23.
//

import UIKit

class thirdViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = "Candy Reviewer: Kaci Koizumi"
    
        descriptionLabel.text = "Hi! My name is Kaci, and I am an avid candy lover! I have been a trick-or-treater for many years. When I'm not reviewing and eating candy, I am a student at UHWO"
        
        self.navigationItem.title = "Kaci's Candy Review"
        // Do any additional setup after loading the view.
        
        aboutMe.image = UIImage (named: "Kaci.jpeg")
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var aboutMe: UIImageView!
    
}
