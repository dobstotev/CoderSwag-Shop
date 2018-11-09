//
//  ViewController.swift
//  CoderSwag-Shop
//
//  Created by Dobs Totev on 09/11/2018.
//  Copyright © 2018 Dobs Totev. All rights reserved.
//

import UIKit

class CategoryVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // We need to set Data Source and Delegate of the view
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
    // Create the number of rows that a table needs
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the total number of items in the array getCategories
        return DataService.instance.getCategories().count
    }
    
    // Assigns an item from the array to a specific row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Grabbing the table view, and we are going to make a reusable cell so that they replace the currently visible items instead of being hidden below the fold
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
                let category = DataService.instance.getCategories()[indexPath.row]
            // Calling the update views function and we are passing the category in it
                cell.updateViews(category: category)
                return cell
        } else {
            return CategoryCell()
        }
        
    }
    
    // When a category is tapped, we need to show another view controller
    // Function that knows which category is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    // setting up the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductsVC {
            assert(sender as? Category != nil)
            productVC.initProducts(category: sender as! Category)
        }
    }


}

