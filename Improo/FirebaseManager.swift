//
//  FirebaseManager.swift
//  ImprooAdmin
//
//  Created by 3axap on 29.02.16.
//  Copyright © 2016 GZZ. All rights reserved.
//

import Foundation
import FirebaseDatabase

class FirebaseManager {
    static let sharedManager = FirebaseManager()
    
    var ref: FIRDatabaseReference = FIRDatabase.database().reference()
    
    func loadItems() {
        let _ = ref.child("Ukrainian/Categories").observe(.value, with: { snapshot in
            if let postDict = snapshot.value as? [String] {
                print(postDict)
            }
        })
    }
}
