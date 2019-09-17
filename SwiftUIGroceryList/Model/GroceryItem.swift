//
//  GroceryItem.swift
//  SwiftUIGroceryList
//
//  Created by Paul Carroll on 9/16/19.
//  Copyright © 2019 Paul Carroll. All rights reserved.
//

import Foundation

var categories: Set<String> = [
    "Bakery",
    "Dairy",
    "Frozen Food",
    "Meat",
    "Produce",
    "Uncategorized"
]

struct GroceryItem {
    var name: String
    var quantity: Int
    var category: String
}
