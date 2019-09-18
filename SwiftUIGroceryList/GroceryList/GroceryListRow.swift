//
//  GroceryListRow.swift
//  SwiftUIGroceryList
//
//  Created by Paul Carroll on 9/17/19.
//  Copyright © 2019 Paul Carroll. All rights reserved.
//

import SwiftUI

struct GroceryListRow: View {
    var listName: String
    var itemCount: Int
    
    var body: some View {
        HStack {
            Text(listName)
            Spacer()
            Text(String(itemCount))
                .bold()
                .padding([.leading, .trailing], 10)
                .padding(.top, -1)
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(12)
            Button(action: {
                print("SHOPPING LIST INFO")
            }) {
                Image(systemName: "info.circle")
                    .foregroundColor(.blue)
            }
            .padding(.leading, 5)
        }
    }
}

struct GroceryListRow_Previews: PreviewProvider {
    static var previews: some View {
        GroceryListRow(listName: "Example list", itemCount: 3)
            .previewLayout(.fixed(width: 300, height: 40))
    }
}
