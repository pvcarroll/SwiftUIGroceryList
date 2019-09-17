//
//  ContentView.swift
//  SwiftUIGroceryList
//
//  Created by Paul Carroll on 9/15/19.
//  Copyright © 2019 Paul Carroll. All rights reserved.
//

import SwiftUI

let shoppingLists: [GroceryList] = [
    GroceryList(name: "list 1", groceryItems: [
        GroceryItem(name: "milk", quantity: 1, category: "Dairy"),
        GroceryItem(name: "chicken", quantity: 1, category: "meat"),
        GroceryItem(name: "oranges", quantity: 1, category: "produce"),
        GroceryItem(name: "bananas", quantity: 1, category: "produce"),
        GroceryItem(name: "almonds", quantity: 1, category: "nuts")
    ]),
    GroceryList(name: "list 2", groceryItems: [
        GroceryItem(name: "milk", quantity: 1, category: "Dairy"),
        GroceryItem(name: "chicken", quantity: 1, category: "meat"),
        GroceryItem(name: "oranges", quantity: 1, category: "produce"),
        GroceryItem(name: "bananas", quantity: 1, category: "produce"),
        GroceryItem(name: "almonds", quantity: 1, category: "nuts")
    ]),
    GroceryList(name: "list 3", groceryItems: [
        GroceryItem(name: "milk", quantity: 1, category: "Dairy"),
        GroceryItem(name: "chicken", quantity: 1, category: "meat"),
        GroceryItem(name: "oranges", quantity: 1, category: "produce"),
        GroceryItem(name: "bananas", quantity: 1, category: "produce"),
        GroceryItem(name: "almonds", quantity: 1, category: "nuts")
    ])
]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header:
                    Text("Shopping Lists")
                        .frame(minWidth: UIScreen.main.bounds.width, idealWidth: UIScreen.main.bounds.width, maxWidth: .infinity,
                               minHeight: 0, idealHeight: nil, maxHeight: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                        .background(Color.green)
                        .foregroundColor(Color.white)) {
                    Text("shopping list 1")
                    Text("shopping list 2")

                    Text("Add a shopping list...")
                }
                Section(header:
                    Text("Recipes")
                        .frame(minWidth: UIScreen.main.bounds.width, idealWidth: UIScreen.main.bounds.width, maxWidth: .infinity,
                               minHeight: 0, idealHeight: nil, maxHeight: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                        .background(Color.green)
                        .foregroundColor(Color.white)) {
                    Text("recipe row 1")
                    Text("recipe row 2")

                    Text("Add a recipe...")
                }
            }
            .navigationBarTitle("Grocery List", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
