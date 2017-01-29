//
//  DetailViewController.swift
//  Improo
//
//  Created by 3axap on 20.01.17.
//  Copyright © 2017 3axap. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView?
    @IBOutlet weak var titleLabel: UILabel?
    @IBOutlet weak var descriptionTextView: UITextView?
    @IBOutlet weak var button: UIButton?
    
    var item: Item? {
        didSet {
            refreshUI()
        }
    }
    
    func refreshUI() {
        loadViewIfNeeded()
        image?.isHidden = true//.image = item?.getImage()
        titleLabel?.text = item?.title
        descriptionTextView?.text = item?.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshUI()
    }

    @IBAction func buttonAction(_ button: UIButton) {
        UIApplication.shared.open((item?.url)!, options: [:]) { (boolean) in
            Swift.print(boolean)
        }
    }
}

extension DetailViewController: ItemSelectionDelegate {
    func itemSelected(newItem: Item) {
        item = newItem
    }
}
