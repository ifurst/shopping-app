//
//  ProductViewController.swift
//  shopping-app
//
//  Created by Vinod Gnaniah on 11/24/17.
//  Copyright © 2017 Vinod Gnaniah. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectView: UICollectionView!
    
    var products: [Product]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectView.dataSource = self
        collectView.delegate = self
    }
    
    func initProduct(category: Category){
        products = CategoryService.instance.getProducts(category: category)
        navigationItem.title = category.title        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath)
            as? ProductCell {
            let product = products[indexPath.row]
            cell.updateCell(product: product)
            return cell
        }
        
        return ProductCell()
    }
    
}
