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
    
    func getCategories() -> [Category]{
        return categories
    }
}
