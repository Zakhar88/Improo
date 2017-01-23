//
//  Categories.swift
//  Improo
//
//  Created by 3axap on 24.01.17.
//  Copyright © 2017 3axap. All rights reserved.
//

import Foundation

enum Categories {
    case ukrainian
    case english
    case russian
    
    var Books: [String] {
        switch self {
        case .ukrainian: return ["Мотивація", "Психологія", "Художні", "Творчість", "Комплексний розвиток", "Стосунки", "Кар'єра" ,"Спорт", "Харчування", "Здоров'я", "Філософія", "Соціум"]
        default: return []
        }
    }
}
