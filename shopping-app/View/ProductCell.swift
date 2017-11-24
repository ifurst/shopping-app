//
//  ProductCell.swift
//  shopping-app
//
//  Created by Vinod Gnaniah on 11/24/17.
//  Copyright © 2017 Vinod Gnaniah. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    
    func updateCell(product: Product){
        
        title.text = product.title
        price.text = product.price
        image.image = UIImage(named: product.image)
    }
}
