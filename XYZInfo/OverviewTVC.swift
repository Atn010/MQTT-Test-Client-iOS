//
//  OverviewTVC.swift
//  XYZInfo
//
//  Created by Antonius George on 10/2/17.
//  Copyright © 2017 Antonius GS. All rights reserved.
//

import UIKit
import SwiftyPlistManager

class OverviewTVC: UITableViewController{
	var itemArray: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
		print("Username: " + Data.shared.clientID + " | Password: " + Data.shared.clientPass)
		/*
		if let URL = Bundle.main.url(forResource: "List", withExtension: "plist"){
			if let transferList = NSArray(contentsOfURL: URL) as? [String]{
				for item in transferList{
					itemArray.append(item)
				}
			}
		}
		*/
		let path = Bundle.main.path(forResource: "List", ofType: "plist")
		if let tempArray = NSArray(contentsOfFile: path!){
			itemArray = tempArray as! [String]
		}
		

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return itemArray.count
    }

	
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for:indexPath)
		cell.textLabel?.text = itemArray[indexPath.row]
		writeToPlist(indexValue: itemArray.count)
		return cell
    }

	func writeToPlist(indexValue: Int){
		let path = Bundle.main.path(forResource: "List", ofType: "plist")
		if let plistArray = NSMutableArray(contentsOfFile: path!){
			plistArray.add("A new Text!")
			//plistArray.write(toFile: path!, atomically: false)
		}
	}

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
