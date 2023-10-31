//
//  secondViewController.swift
//  halloweencandyreview
//
//  Created by Kaci Koizumi on 10/31/23.
//

import UIKit

class secondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    
    var myChocoArray = ["KitKat", "Hershey's", "M&M's", "Snickers"]

    var candyStarRating = ["5 stars", "3 stars", "4 stars", "4 stars"]
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return myChocoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                       let text = myChocoArray[indexPath.row]
        cell.detailTextLabel?.text = candyStarRating[indexPath.row]
                       cell.textLabel?.text = text
                       return cell

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
