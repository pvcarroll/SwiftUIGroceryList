//
//  GroceryList.swift
//  SwiftUIGroceryList
//
//  Created by Paul Carroll on 9/16/19.
//  Copyright © 2019 Paul Carroll. All rights reserved.
//

import Foundation

struct GroceryList {
    var name: String
    var groceryItems: [GroceryItem]
    
    var categories: Set<String> {
        var itemCategories = Set<String>()
        groceryItems.forEach { (item) in
            itemCategories.insert(item.category)
        }
        return itemCategories
    }
}
