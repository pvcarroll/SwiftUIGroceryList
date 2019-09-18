//
//  GroceryListView.swift
//  SwiftUIGroceryList
//
//  Created by Paul Carroll on 9/16/19.
//  Copyright © 2019 Paul Carroll. All rights reserved.
//

import SwiftUI

struct GroceryListView: View {
    var groceryList: GroceryList
    
    var body: some View {
        NavigationView {
            List {
                ForEach(Array(groceryList.categories), id: \.self) { category in
                    Section(header: Text(category)
                        .frame(minWidth: UIScreen.main.bounds.width, idealWidth: UIScreen.main.bounds.width,
                               maxWidth: .infinity, minHeight: 0, idealHeight: nil,
                               maxHeight: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                    ) {
                        ForEach(self.groceryList.itemsByCategory[category] ?? [], id: \.name) { groceryItem in
                            GroceryListItemRow(groceryItem: groceryItem)
                        }
                    }
                }
                .navigationBarTitle("Grocery List", displayMode: .inline)
            }
        }
    }
}

private let sampleGroceryList = GroceryList(id: 1, name: "list 1", groceryItems: [
    GroceryItem(name: "milk", quantity: 1, category: "Dairy"),
    GroceryItem(name: "chicken", quantity: 1, category: "Meat"),
    GroceryItem(name: "oranges", quantity: 1, category: "Produce"),
    GroceryItem(name: "bananas", quantity: 1, category: "Produce"),
    GroceryItem(name: "almonds", quantity: 1, category: "Nuts")
])

struct GroceryListView_Previews: PreviewProvider {
    static var previews: some View {
        GroceryListView(groceryList: sampleGroceryList)
    }
}
