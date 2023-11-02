//
//  fourthViewController.swift
//  halloweencandyreview
//
//  Created by Kaci Koizumi on 10/31/23.
//

import UIKit

class fourthViewController: UIViewController {

    @IBOutlet weak var featCandyLabel: UILabel!
    @IBOutlet weak var candyDesc: UILabel!
    @IBOutlet weak var featCandyImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        featCandyLabel.text = "Dum Dums"
        candyDesc.text = "Dum Dums are a classic lollipop that come in an extreme variety of flavors."
        
        self.navigationItem.title = "Kaci's Candy Review"
        featCandyImage.image = UIImage (named: "dumdums")
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
