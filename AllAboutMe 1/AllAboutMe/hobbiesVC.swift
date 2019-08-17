//
//  hobbiesVC.swift
//  AllAboutMe
//
//  Created by Jessica Alexander on 6/11/19.
//  Copyright © 2019 Jessica Alexander. All rights reserved.
//

import UIKit

var hobbyList:[Hobby] = []

class hobbiesVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var Reading = Hobby()
        Reading.title = "Reading"
        Reading.description = "Reading is one of my hobbies. I love to escape from everyday life into a story of intrige, love, deseption, suspense, and action 📚."
        Reading.ImageName = UIImage(named: "read")
        
        var Gaming = Hobby()
        Gaming.title = "Gaming"
        Gaming.description = "Gaming is one of my hobbies. The games I love to escape into provide a land of magic, battle, and political intrige 🎮."
        Gaming.ImageName = UIImage(named: "video")
        
        var Exploring = Hobby()
        Exploring.title = "Exploring"
        Exploring.description = "Exploring is one of my hobbies. While I enjoy it I don't enjoy camping because the mosquitos 🦟 tend to use me as their own personal buffet 🌲🦋🐝🦅🐇."
        Exploring.ImageName = UIImage(named: "explore")
        
        var Gardening = Hobby()
        Gardening.title = "Gardening"
        Gardening.description = "Gardening is one of my favorite hobbies. I enjoy nurturing seedlings and then transporting them into the groud. This being my favorite is kinda ironic considering I'm allergic to anything that blooms 🌺🌻🌹."
        Gardening.ImageName = UIImage(named: "gardening")
        
        if hobbyList.count == 0 {
            hobbyList += [Reading, Gaming, Exploring, Gardening]
            
        }
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return hobbyList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "aHobby", for: indexPath)

        // Configure the cell...
        let selectedHobby = hobbyList[indexPath.row]
        cell.textLabel?.text = selectedHobby.title
        return cell
    }
    @IBAction func AddHobby(_ sender: UIBarButtonItem) {
        let HobbyPop = UIAlertController(title: "Add New Hobby 🤩", message: "Enter Information About Your Hobby.", preferredStyle: UIAlertController.Style.alert)
        
        HobbyPop.addTextField(configurationHandler: {(txtNewHobby: UITextField!) in txtNewHobby.placeholder = "Enter your hobby please: "})
        
        HobbyPop.addTextField(configurationHandler: {(txtHobbyDescription: UITextField!) in txtHobbyDescription.placeholder = "Enter your hobbies descrition please💗: "})
        
        let AddHobby = UIAlertAction(title: "Add Hobby❗️", style: UIAlertAction.Style.destructive){(UIAlertAction) -> Void in
            let txtNewHobby = HobbyPop.textFields![0] as UITextField
            let txtHobbyDescription = HobbyPop.textFields![1] as UITextField
            
            var NewHobby = Hobby()
            NewHobby.title = txtNewHobby.text!
            NewHobby.description = txtHobbyDescription.text!
            NewHobby.ImageName = UIImage(named: "noImage")
            
            if NewHobby.title != "" && NewHobby.description != "" {
                hobbyList += [NewHobby]
                self.tableView.beginUpdates()
                self.tableView.insertRows(at: [IndexPath.init(row: hobbyList.count - 1, section: 0)], with: .automatic)
                self.tableView.endUpdates()}}
        
        HobbyPop.addAction(AddHobby)
        self.present(HobbyPop, animated: true, completion: nil)
        self.tableView.reloadData()
        self.tableView.setNeedsDisplay()
        }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            
            hobbyList.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let indexPath = tableView.indexPathForSelectedRow!
        hobbyIndex = indexPath.row
    }

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
