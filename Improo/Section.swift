//
//  Section.swift
//  Improo
//
//  Created by 3axap on 24.01.17.
//  Copyright © 2017 3axap. All rights reserved.
//

import Foundation

enum Section: String {
    case Books = "Books"
    case Events = "Events"
    case Activities = "Activities"
    case Resources = "Resources"
    case Food = "Food"
    case Entertainment = "Entertainment"
    case Sport = "Sport"
    case Career = "Career"
    case News = "News"
    
    static let allSections = [Books.rawValue, Events.rawValue, Activities.rawValue, Resources.rawValue, Food.rawValue, Entertainment.rawValue, Sport.rawValue, Career.rawValue, News.rawValue]
}
