//
//  hobbieDetailsVC.swift
//  AllAboutMe
//
//  Created by Jessica Alexander on 6/25/19.
//  Copyright © 2019 Jessica Alexander. All rights reserved.
//

import UIKit
var hobbyIndex:Int?
class hobbieDetailsVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let hobbyName = hobbyList[hobbyIndex!].title
        if(hobbyName != ""){
            self.title = hobbyName
            let hobbyDesc = hobbyList[hobbyIndex!].description
            let hobbyImageName = hobbyList[hobbyIndex!].ImageName
            hobbyDescrition.text = hobbyDesc
            hobbieImage.image = hobbyImageName
        }
        else
        {
            self.title = "Error"
            hobbyDescrition.text = "There is a problem. Please return to the previous screen"
            hobbieImage.image = UIImage(named: "noImage")
        }
    }
    @IBOutlet weak var hobbyDescrition: UILabel!
    @IBOutlet weak var hobbieImage: UIImageView!
    
    @IBAction func ChooseImage(_ sender: UIButton) {
        if
            UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.savedPhotosAlbum){
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        self.dismiss(animated: true, completion: nil)
        let image = info[.originalImage] as? UIImage
        hobbieImage.image = image
        hobbyList[hobbyIndex!].ImageName = image
    }
    // MARK: - Table view data source



    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
