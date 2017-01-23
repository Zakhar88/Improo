//
//  Item.swift
//  Improo
//
//  Created by 3axap on 24.01.17.
//  Copyright © 2017 3axap. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class Item {
    let title: String
    let description: String
    let categories: [String]
    var image: UIImage?
    var url: URL?
    
    init?(dataSnapshot: FIRDataSnapshot) {
        guard let value = dataSnapshot.value as? NSDictionary,
        let newTitle = value["title"] as? String,
        let newDescription = value["description"] as? String,
            let newCategories = value["categories"] as? [String] else {
                return nil
        }
        title = newTitle
        description = newDescription
        categories = newCategories
        
        if let newURLString = value["url"] as? String, let newURL = URL(string: newURLString) {
            url = newURL
        }
        
        if let imageName = value["imageName"] as? String {
            let storage = FIRStorage.storage()
            let storageRef = storage.reference(forURL: "your_firebase_storage_bucket")
            let imageRef = storageRef.child(imageName)
            imageRef.data(withMaxSize: 1 * 1024 * 1024) { data, error in
                guard let data = data, let newImage = UIImage(data: data) else {
                    //ALERT ABOUT IMAGE
                    return
                }
                self.image = newImage
            }
        }
    }
}
