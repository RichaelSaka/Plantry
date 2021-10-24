//
//  formViewController.swift
//  Plantry
//
//  Created by Damilola Awofisayo on 10/23/21.
//

import UIKit

class formViewController: UIViewController {

    @IBOutlet weak var textfield1: UITextField!
    @IBOutlet weak var showImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var plantlocation: UITextField!
    @IBOutlet weak var cancelbutton: UIButton!
    @IBOutlet weak var savebutton: UIButton!
    @IBOutlet weak var pickPhoto: UIButton!
    var doneSaving: (() -> ())?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addImage(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        present(vc, animated: true)
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true)
    }
    @IBAction func save(_ sender: Any) {
        HomeScreenViewController.plantNames.append(textfield1.text!)
        HomeScreenViewController.plantImages.append(showImage.image)
        HomeScreenViewController.plantPlace.append(plantlocation.text!)
        if let doneSaving = doneSaving {
            doneSaving()
        }
        dismiss(animated: true)

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
extension formViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")]as? UIImage{
            showImage.image = image
        }
        
        picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
}
