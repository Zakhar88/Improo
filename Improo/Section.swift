//
//  Section.swift
//  Improo
//
//  Created by 3axap on 24.01.17.
//  Copyright © 2017 3axap. All rights reserved.
//

import Foundation

enum Section: String {
    case Activities = "Activities"
    case Books = "Books"
    case Career = "Career"
    case Courses = "Courses"
    case Entertainment = "Entertainment"
    case Events = "Events"
    case Food = "Food"
    case News = "News"
    case Resources = "Resources"
    case Sport = "Sport"
    
    var ukrainian: String {
        switch self {
        case .Activities: return "Дії"
        case .Books: return "Книги"
        case .Career: return "Кар'єра"
        case .Courses: return "Курси"
        case .Entertainment: return "Розваги"
        case .Events: return "Події"
        case .Food: return "Їжа"
        case .News: return "Новини"
        case .Resources: return "Сайти"
        case .Sport: return "Спорт"
        }
    }
}
