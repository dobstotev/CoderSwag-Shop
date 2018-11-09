//
//  ProductsVC.swift
//  CoderSwag-Shop
//
//  Created by Dobs Totev on 09/11/2018.
//  Copyright © 2018 Dobs Totev. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController {
    
    //We need an empty array here. For example if the data is not loaded yet, and the collection is looking for an item the whole app will crash
    private(set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
    }

}
