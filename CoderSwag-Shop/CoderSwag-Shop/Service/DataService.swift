//
//  DataService.swift
//  CoderSwag-Shop
//
//  Created by Dobs Totev on 09/11/2018.
//  Copyright © 2018 Dobs Totev. All rights reserved.
//

import Foundation

class DataService {
    
    //  Creating singleton - meaning it will use one copy of the data rathar than having multiple copies. This is done with "static"
    static let instance = DataService()
    
    //  Example data. NOrmally it would come from an API/Database and will be stored in an Array
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png"),
        ]
    
    // Creating function that returns (->) array from type Category
    func getCategories() -> [Category]{
        return categories
    }
}
