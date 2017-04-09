//
//  MenuTableViewController.swift
//  Improo
//
//  Created by 3axap on 03.04.17.
//  Copyright © 2017 3axap. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let navController = segue.destination as? UINavigationController,
            let listTableVC = navController.viewControllers.first as? ListTableViewController,
            let section = Section(rawValue: segue.identifier ?? "") {
            listTableVC.section = section
        }
    }
}
