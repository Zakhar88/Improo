//
//  ListTableViewController.swift
//  Improo
//
//  Created by 3axap on 19.01.17.
//  Copyright © 2017 3axap. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    @IBOutlet weak var menuBarButtonIcon: UIBarButtonItem!
    
    var items = [Item]()
    var section: Section = .Books

    override func viewDidLoad() {
        title = section.ukrainian
        
        super.viewDidLoad()
        items.append(Item())
        items.append(Item())
        items.append(Item())
        items.append(Item())
        items.append(Item())
        
        if self.revealViewController() != nil {
            menuBarButtonIcon.target = self.revealViewController()
            menuBarButtonIcon.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        FirebaseManager.sharedManager.loadItems()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row].title
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetails", sender: items[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails", let detailsVC = segue.destination as? DetailsViewController, let item = sender as? Item {
            detailsVC.item = item
        }
    }
}
