//
//  RestaurantTableViewController.swift
//  FoodPin
//
//  Created by Mac on 9/16/2560 BE.
//  Copyright © 2560 iPathSaid.com. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {
    
    
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Ate;oer", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "Thai cafe"]
    
   // var restaurantImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg",
     //   "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg",
    //    "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg",
    //   "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg",
    //    "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg",
      //  "donostia.jpg", "royaloak.jpg", "thaicafe.jpg"]
    
     var restaurantImages = ["CafeDeadend.jpg", "Homei.jpg", "Teakha.jpg", "CafeLoisl.jpg", "PetiteOyster.jpg", "ForKeeRestaurant.jpg", "PosAtelier.jpg", "BourkeStreetBakery.jpg", "HaighsChocolate.jpg", "PalominoEspresso.jpg", "Upstate.jpg", "Traif.jpg", "GrahamAvenueMeats.jpg", "WaffleWolf.jpg", "FiveLeaves.jpg", "CafeLore.jpg", "Confessional.jpg", "Barrafina.jpg", "Donostia.jpg", "RoyalOak.jpg", "Thaicafe.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurantNames.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)

        // Configure the cell...
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurantImages[indexPath.row].lowercaseString)
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
