//
//  CategoryCell.swift
//  shopping-app
//
//  Created by Vinod Gnaniah on 11/23/17.
//  Copyright © 2017 Vinod Gnaniah. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var categoryImage: UIImageView!
    
    func updateCell(cateogry: Category){
        categoryLabel.text = cateogry.title
        categoryImage.image = UIImage(named: cateogry.image)
    }

}
