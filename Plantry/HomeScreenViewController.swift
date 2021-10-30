//
//  HomeScreenViewController.swift
//  Plantry
//
//  Created by Richael Saka on 10/10/21.
//

import UIKit

class HomeScreenViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   
    @IBOutlet weak var tableView: UITableView!
    //TODO: When user presses plus button, the name of the plant will be stored in this array
    static var plantNames = ["Tomato", "Tomato", "Tomato"]
    
    //TODO: When user takes picture or selects one from their gallery, the image name will be appended into this array as a string
    static var plantImages = [UIImage(named:"Tomato"), UIImage(named:"Tomato"), UIImage(named:"Tomato")]
    
    //TODO: On the popup, there should be an area for the user to input where the plant is. The area should then be appended into this array
    static var plantPlace = ["Tomato", "Tomato", "Tomato"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self

        // Do any additional setup after loading the view.
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //This will return the number of plants the user currently has
        
        return HomeScreenViewController.plantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! PlantTableViewCell
        
        //setting the labels and images for the plant rows
        
        //gets the plant image from the array and sets the value to the image view
        cell.plantImage.image = HomeScreenViewController.plantImages[indexPath.row]
        
        //gets the plant name from the plantNames array and sets the value to the text label
        cell.plantNameLabel.text = HomeScreenViewController.plantNames[indexPath.row]
        
        //gets the plant area from the plantPlace array and sets the value to the text label
        cell.plantPlaceLabel.text = HomeScreenViewController.plantPlace[indexPath.row]
        
        return cell
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addPlantSegue"{
            let popup = segue.destination as! formViewController
            popup.doneSaving = {
                self.tableView.reloadData()
            }
        }
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
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delete = UIContextualAction(style: .destructive, title: "   Harvest!  "){ (contextualAcction, view, actionPerformed: (Bool) -> ()) in
            HomeScreenViewController.plantNames.remove(at: indexPath.row)
            HomeScreenViewController.plantImages.remove(at: indexPath.row)
            HomeScreenViewController.plantPlace.remove(at: indexPath.row)
        }
        self.tableView.reloadData()
        
        return UISwipeActionsConfiguration(actions: [delete])
    }
    

}
