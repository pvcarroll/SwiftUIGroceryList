//
//  ShoppingListRow.swift
//  SwiftUIGroceryList
//
//  Created by Paul Carroll on 9/17/19.
//  Copyright © 2019 Paul Carroll. All rights reserved.
//

import SwiftUI

struct ShoppingListRow: View {
    var listName: String
    var itemCount: Int
    
    var body: some View {
        HStack {
            Text(listName)
            Spacer()
            Text(String(itemCount))
                .padding([.leading, .trailing], 10)
                .padding(.top, -2)
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(12)
            Button(action: {
                
            }) {
                Image(systemName: "info.circle")
            }
            .padding(.leading, 5)
        }
    }
}

struct ShoppingListRow_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingListRow(listName: "Example list", itemCount: 3)
            .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 40))
    }
}
