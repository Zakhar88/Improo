//
//  DetailsViewController.swift
//  Improo
//
//  Created by 3axap on 20.01.17.
//  Copyright © 2017 3axap. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel?
    @IBOutlet weak var descriptionTextView: UITextView?
    
    var item: Item? {
        didSet {
            refreshUI()
        }
    }
    
    func refreshUI() {
        loadViewIfNeeded()
        titleLabel?.text = item?.title
        descriptionTextView?.text = item?.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshUI()
    }
}
