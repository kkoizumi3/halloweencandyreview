//
//  fifthViewController.swift
//  halloweencandyreview
//
//  Created by Kaci Koizumi on 11/4/23.
//

import UIKit

class fifthViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var myGummyArray = ["Gummy Bears", "Gummy Worms", "Rainbow Belts", "Starbursts"]
    var candyStarRatingGummy = ["5 stars", "4 stars", "4 stars", "4 stars"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return myGummyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = myGummyArray[indexPath.row]
        cell.detailTextLabel?.text = candyStarRatingGummy[indexPath.row]
        cell.textLabel?.text = text
        return cell
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}
