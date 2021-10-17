//
//  ViewController.swift
//  Plantry
//
//  Created by Richael Saka on 9/26/21.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var beginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //making the corners of the buttons rounded

        beginButton.layer.cornerRadius = 15

    }


}

