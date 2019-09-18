//
//  GroceryListItemRow.swift
//  SwiftUIGroceryList
//
//  Created by Paul Carroll on 9/17/19.
//  Copyright © 2019 Paul Carroll. All rights reserved.
//

import SwiftUI

struct GroceryListItemRow: View {
    var groceryItem: GroceryItem
    
    var body: some View {
        HStack {
            Text(groceryItem.name)
            Spacer()
            Button(action: {
                print("SHOPPING LIST INFO TAPPED")
            }) {
                Image(systemName: "info.circle")
                    .foregroundColor(.blue)
            }
            .padding(.leading, 5)
        }
    }
}

struct GroceryListItemRow_Previews: PreviewProvider {
    static var previews: some View {
        let groceryItem = GroceryItem(name: "milk", quantity: 1, category: "Dairy")
        return GroceryListItemRow(groceryItem: groceryItem)
            .previewLayout(.fixed(width: 300, height: 40))
    }
}
