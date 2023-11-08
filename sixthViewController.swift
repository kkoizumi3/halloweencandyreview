//
//  sixthViewController.swift
//  halloweencandyreview
//
//  Created by Kaci Koizumi on 11/4/23.
//

import UIKit

class sixthViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var myHardCandy = ["DumDums", "Tootsie Pops", "Skittles", "Sweetarts"]
    var hardCandyRating = ["5 stars", "5 stars", "4 stars", "2 stars"]
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
                    {
                        tableView.deselectRow(at: indexPath, animated: true)
                    }
    
    
    var categoryThreeImagesData = [String]()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                
        if segue.identifier == "mySegue"
                {
                    let s1 = segue.destination as! fourthDetailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
                    s1.imagePass = categoryThreeImagesData[imageIndex!]
                }
            }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return myHardCandy.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = myHardCandy[indexPath.row]
        cell.detailTextLabel?.text = hardCandyRating[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Kaci's Candy Review"
        
        // Do any additional setup after loading the view.
        let path = Bundle.main.path(forResource: "Property List Three", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        categoryThreeImagesData = dict!.object(forKey:"CategoryThreeImages") as! [String]
    }
        
        
        
        
        
        
    }
