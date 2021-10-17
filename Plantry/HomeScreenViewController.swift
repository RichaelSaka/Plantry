//
//  HomeScreenViewController.swift
//  Plantry
//
//  Created by Richael Saka on 10/10/21.
//

import UIKit

class HomeScreenViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   
    //TODO: When user presses plus button, the name of the plant will be stored in this array
    var plantNames = [String]()
    
    //TODO: When user takes picture or selects one from their gallery, the image name will be appended into this array as a string
    var plantImages = [String]()
    
    //TODO: On the popup, there should be an area for the user to input where the plant is. The area should then be appended into this array
    var plantPlace = [String]()
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //This will return the number of plants the user currently has
        
        return plantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! PlantTableViewCell
        
        //setting the labels and images for the plant rows
        
        //gets the plant image from the array and sets the value to the image view
        cell.plantImage.image = UIImage(named: plantImages[indexPath.row])
        
        //gets the plant name from the plantNames array and sets the value to the text label
        cell.plantNameLabel.text = plantNames[indexPath.row]
        
        //gets the plant area from the plantPlace array and sets the value to the text label
        cell.plantPlaceLabel.text = plantPlace[indexPath.row]
        
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
    
    // UI stuff - hiding the status bar
    

}
