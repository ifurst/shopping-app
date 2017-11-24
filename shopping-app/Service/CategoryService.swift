//
//  CategoryService.swift
//  shopping-app
//
//  Created by Vinod Gnaniah on 11/23/17.
//  Copyright © 2017 Vinod Gnaniah. All rights reserved.
//

import Foundation

class CategoryService {
    
    static let instance = CategoryService()
    
    let categories = [ Category(title: "SHIRTS", image: "shirts.png"),
                       Category(title: "HOODIES", image: "hoodies.png"),
                       Category(title: "HATS", image: "hats.png"),
                       Category(title: "DIGITAL", image: "digital.png")
    ]
    
    let hats: [Product] = [
        Product(title: "Devslopes Logo Graphic Hat", price: "$18", image: "hat01.jpg"),
        Product(title: "Devslopes Black Hat", price: "$17", image: "hat02.jpg"),
        Product(title: "Devslopes White Hat", price: "$18", image: "hat03.jpg"),
        Product(title: "Devslopes Gray Hat", price: "$16", image: "hat04.jpg")
    ]
    
    let hoodies: [Product] = [
        Product(title: "Devslopes Logo Graphic Black Hoodie", price: "$50", image: "hoodie01.jpg"),
        Product(title: "Devslopes Logo Graphic Red Hoodie", price: "$57", image: "hoodie02.jpg"),
        Product(title: "Devslopes White Hoodie", price: "$58", image: "hoodie03.jpg"),
        Product(title: "Devslopes Gray Hoodie", price: "$56", image: "hoodie04.jpg")
    ]
    
    let shirts: [Product] = [
        Product(title: "Devslopes Logo Graphic T-Shirt", price: "$15", image: "shirt01.jpg"),
        Product(title: "Devslopes Logo WHite T-Shirt", price: "$17", image: "shirt02.jpg"),
        Product(title: "Devslopes Logo Red T-Shirt", price: "$14", image: "shirt03.jpg"),
        Product(title: "Devslopes Gray T-Shirt", price: "$12", image: "shirt04.jpg"),
        Product(title: "Devslopes Black T-Shirt", price: "$15", image: "shirt05.jpg")
    ]
    
    let digitals: [Product] = [Product]()
    
    
    func getProducts(category: Category) -> [Product] {
        
        switch category.title {
            
        case "SHIRTS":
            return shirts
        case "HATS":
            return hats
        case "HOODIES":
            return hoodies
        case "DIGITAL":
            return digitals
        default:
            return shirts
        }
    }
    
    func getCategories() -> [Category]{
        return categories
    }
}
