//
//  ViewController.swift
//  Improo
//
//  Created by 3axap on 07.12.16.
//  Copyright © 2016 3axap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var container: UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToSplit" {
            let splitViewController = segue.destination as! UISplitViewController
            let leftNavController = splitViewController.viewControllers.first as! UINavigationController
            let listTableViewController = leftNavController.topViewController as! ListTableViewController
            let detailViewController = splitViewController.viewControllers.last as! DetailViewController
            
            //let firstItem = listTableViewController.items.first
            detailViewController.item = Item()
            listTableViewController.delegate = detailViewController

        }
    }
    
    
}

