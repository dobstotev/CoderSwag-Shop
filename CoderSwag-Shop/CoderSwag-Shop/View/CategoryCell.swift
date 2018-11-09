//
//  CategoryCell.swift
//  CoderSwag-Shop
//
//  Created by Dobs Totev on 09/11/2018.
//  Copyright © 2018 Dobs Totev. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    // Creating a function to update the views of the table and we are passing in the category to know whichever category is currently in
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
