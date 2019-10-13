//
//  ContentView.swift
//  SwiftUIGroceryList
//
//  Created by Paul Carroll on 9/15/19.
//  Copyright © 2019 Paul Carroll. All rights reserved.
//

import SwiftUI

var groceryLists: [GroceryList] = [
    GroceryList(id: UUID().uuidString, name: "list 1", groceryItems: [
        GroceryItem(name: "milk", quantity: 1, category: "Dairy"),
        GroceryItem(name: "chicken", quantity: 1, category: "meat"),
        GroceryItem(name: "oranges", quantity: 1, category: "produce"),
        GroceryItem(name: "bananas", quantity: 1, category: "produce"),
        GroceryItem(name: "almonds", quantity: 1, category: "nuts")
    ]),
    GroceryList(id: UUID().uuidString, name: "list 2", groceryItems: [
        GroceryItem(name: "milk", quantity: 1, category: "Dairy"),
        GroceryItem(name: "chicken", quantity: 1, category: "meat"),
        GroceryItem(name: "oranges", quantity: 1, category: "produce")
    ]),
    GroceryList(id: UUID().uuidString, name: "list 3", groceryItems: [
        GroceryItem(name: "milk", quantity: 1, category: "Dairy"),
        GroceryItem(name: "chicken", quantity: 1, category: "meat"),
        GroceryItem(name: "oranges", quantity: 1, category: "produce"),
        GroceryItem(name: "bananas", quantity: 1, category: "produce")
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
                            ForEach(groceryLists) { groceryList in
                                NavigationLink(destination: GroceryListView(groceryList: groceryList)) {
                                    GroceryListRow(listName: groceryList.name, itemCount: groceryList.groceryItems.count)
                                }
                            }
                            NavigationLink(destination: AddGroceryList(name: "")) {
                                Text("Add a shopping list...")
                                .foregroundColor(Color.gray)
                            }
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
                        .foregroundColor(Color.gray)
                }
            }
            .navigationBarTitle("Shopping Lists", displayMode: .inline)
            .navigationBarItems(leading:
                Button(action: {
                    print("SETTINGS TAPPED")
                }) {
                    Image(systemName: "gear")
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
