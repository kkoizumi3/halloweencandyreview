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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
                {
                    tableView.deselectRow(at: indexPath, animated: true)
                }
    
    var categoryOneImagesData = [String]()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                if segue.identifier == "mySegue"
                {
                    let s1 = segue.destination as! secondDetailViewController
                    let imageIndex = tableView.indexPathForSelectedRow?.row
                    s1.imagePass = categoryOneImagesData[imageIndex!]
                }
            }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Kaci's Candy Review"
        // Do any additional setup after loading the view.
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        categoryOneImagesData = dict!.object(forKey:"CategoryOneImages") as! [String]
        
    }
    

    

}
