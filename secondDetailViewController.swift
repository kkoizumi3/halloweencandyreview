//
//  secondDetailViewController.swift
//  halloweencandyreview
//
//  Created by Kaci Koizumi on 11/2/23.
//

import UIKit

class secondDetailViewController: UIViewController {
    @IBOutlet weak var candyImage: UIImageView!
    
    var imagePass: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageName = imagePass {
                    candyImage.image = UIImage(named: imageName)
                }
        
        // Do any additional setup after loading the view.
    }
    
    

   

}
