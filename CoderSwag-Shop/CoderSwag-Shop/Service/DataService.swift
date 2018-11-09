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
    
    private let hats = [
        Product(title: "Devslops Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslops Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$25", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$25", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$25", imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo Hoodie Grey", price: "$25", imageName: "hoodie03.png"),
        Product(title: "Devslopes Logo Hoodie Black", price: "$25", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$26", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Shirt Light Grey", price: "$26", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$26", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$26", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$26", imageName: "shirt05.png"),
        ]
    
    
    // Empty array of type Product. We need it because when the collection view is feeding the data if its empty we will get NIL and the app will crash
    private let digitalGoods = [Product]()
    
    // Functions to get the items and return the data
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
    // Creating function that returns (->) array from type Category
    func getCategories() -> [Category]{
        return categories
    }
    
    // getting type Product for the specific category. We need to see what title is passed and get the corresponding items
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
}
