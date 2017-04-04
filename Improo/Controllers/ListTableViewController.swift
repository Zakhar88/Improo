//
//  ListTableViewController.swift
//  Improo
//
//  Created by 3axap on 19.01.17.
//  Copyright © 2017 3axap. All rights reserved.
//

import UIKit

protocol ItemSelectionDelegate: class {
    func itemSelected(newItem: Item)
}

class ListTableViewController: UITableViewController {
    
    @IBOutlet weak var menuBarButtonIcon: UIBarButtonItem!
    
    var items = [Item]()
    weak var delegate: ItemSelectionDelegate?

    override func viewDidLoad() {
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
        delegate?.itemSelected(newItem: items[indexPath.row])
        if let detailViewController = self.delegate as? DetailViewController {
            splitViewController?.showDetailViewController(detailViewController, sender: nil)
        }
    }
}
