//
//  RecommendationsViewController.swift
//  Plantry
//
//  Created by Richael Saka on 10/25/21.
//

import UIKit

class RecommendationsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var plantNames = ["strawberries", "chrysanthemum", "gardenias", "fern plant"]
    
    var plantImages = ["strawberries", "chrysanthemum", "gardenias", "fern plant"]
    
    var plantFact1 = ["grows well in your area", "easy to grow", "will add later", "will add later"]
    
    var plantFact2 = ["grows well in your area", "easy to grow", "will add later", "will add later"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return plantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "recommendationcell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RecommendatonsTableViewCell
        
        cell.nameLabel.text = plantNames[indexPath.row]
        cell.plantImageView.image = UIImage(named: plantImages[indexPath.row])
        cell.plantFact1.text = plantFact1[indexPath.row]
        cell.plantFact2.text = plantFact2[indexPath.row]
        
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
