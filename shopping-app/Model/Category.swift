//
//  Category.swift
//  shopping-app
//
//  Created by Vinod Gnaniah on 11/23/17.
//  Copyright © 2017 Vinod Gnaniah. All rights reserved.
//

import Foundation

struct Category{
    
    private(set) public var title: String!
    private(set) public var image: String!
    
    init (title: String, image: String){
        self.title = title
        self.image = image
    }
    
}
