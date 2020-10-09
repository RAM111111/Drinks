//
//  drink.swift
//  Drinks
//
//  Created by ر on 13/02/1442 AH.
//  Copyright © 1442 r. All rights reserved.
//

import SwiftUI

struct drinkss:Hashable,Codable,Identifiable {
    var id:Int
    var name:String
    var imageName:String
    var description:String
    var category : Category
    
    
    
    
    enum Category:String,CaseIterable,Codable,Hashable{
        case hot = "hot"
        case cold = "cold"
    }
}
