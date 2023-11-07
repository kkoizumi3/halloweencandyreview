//
//  fifthViewController.swift
//  halloweencandyreview
//
//  Created by Kaci Koizumi on 11/4/23.
//

import UIKit

class fifthViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var myGummyArray = ["Gummy Bears", "Gummy Worms", "Rainbow Belts", "Starbursts"]
    var candyStarRatingGummy = ["5 stars", "4 stars", "4 stars", "4 stars"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return myGummyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = myGummyArray[indexPath.row]
        cell.detailTextLabel?.text = candyStarRatingGummy[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
                {
                    tableView.deselectRow(at: indexPath, animated: true)
                }
    
    var categoryTwoImagesData = [String]()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                
        if segue.identifier == "mySegue"
                {
                    let s1 = segue.destination as! thirdDetailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
                    s1.imagePass = categoryTwoImagesData[imageIndex!]
                }
            }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let path = Bundle.main.path(forResource: "Property List Two", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        categoryTwoImagesData = dict!.object(forKey:"CategoryTwoImages") as! [String]
    }
    
   
        
    }

