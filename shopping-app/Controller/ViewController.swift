//
//  ViewController.swift
//  shopping-app
//
//  Created by Vinod Gnaniah on 11/23/17.
//  Copyright © 2017 Vinod Gnaniah. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CategoryService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell") as? CategoryCell {
            let category = CategoryService.instance.getCategories()[indexPath.row]
            cell.updateCell(cateogry: category)
            return cell
        }
        else{
            return CategoryCell()
        }
    }
    

}

