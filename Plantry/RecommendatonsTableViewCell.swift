//
//  RecommendatonsTableViewCell.swift
//  Plantry
//
//  Created by Richael Saka on 10/25/21.
//

import UIKit

class RecommendatonsTableViewCell: UITableViewCell {

    @IBOutlet weak var plantImageView: UIImageView!
    
    @IBOutlet weak var plantFact1: UILabel!
    
    @IBOutlet weak var plantFact2: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
