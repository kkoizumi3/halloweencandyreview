//
//  thirdDetailViewController.swift
//  halloweencandyreview
//
//  Created by Kaci Koizumi on 11/7/23.
//

import UIKit

class thirdDetailViewController: UIViewController {
    @IBOutlet weak var secondImageView: UIImageView!
    
    var imagePass: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageName = imagePass {
                    secondImageView.image = UIImage(named: imageName)
                }
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
