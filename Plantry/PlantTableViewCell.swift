//
//  PlantTableViewCell.swift
//  Plantry
//
//  Created by Richael Saka on 10/17/21.
//

import UIKit

class PlantTableViewCell: UITableViewCell {
    
    //image of the plant
    @IBOutlet weak var plantImage: UIImageView!
    
    //name and area of the plant ex: Front Yard, Backyard etc.
    @IBOutlet weak var plantNameLabel: UILabel!
    @IBOutlet weak var plantPlaceLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
