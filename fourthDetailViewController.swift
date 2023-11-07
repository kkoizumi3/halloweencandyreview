//
//  fourthDetailViewController.swift
//  halloweencandyreview
//
//  Created by Kaci Koizumi on 11/7/23.
//

import UIKit

class fourthDetailViewController: UIViewController {
    @IBOutlet weak var thirdImageView: UIImageView!
    
    var imagePass: String?
    override func viewDidLoad() {
        super.viewDidLoad()
       
        if let imageName = imagePass {
                    thirdImageView.image = UIImage(named: imageName)
                }
        // Do any additional setup after loading the view.
    }
    



}
