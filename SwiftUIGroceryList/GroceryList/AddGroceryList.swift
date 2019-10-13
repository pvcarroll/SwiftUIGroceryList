//
//  AddGroceryList.swift
//  SwiftUIGroceryList
//
//  Created by Paul Carroll on 9/24/19.
//  Copyright © 2019 Paul Carroll. All rights reserved.
//

import SwiftUI

struct AddGroceryList: View {
    @State var name: String
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Grocery list name", text: $name)
                    .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                    .background(Color.white)
                    .border(Color(UIColor.systemGray4))
                    .padding(.bottom, 6)
                Button(action: {
                    // TODO: Persist new grocery lists
                    groceryLists.append(GroceryList(id: UUID().uuidString, name: self.name, groceryItems: []))
                    
                }) {
                    Text("Add List")
                        .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                        .background(Color.white)
                        .border(Color(UIColor.systemGray4))
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .circular))
//                        .cornerRadius(20)
                }
                
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .padding([.leading, .trailing, .top], 20)
            .background(Color(UIColor.systemGray6))
            .edgesIgnoringSafeArea(.top)
        }
        .navigationBarTitle("Add Grocery List")
    }
}

struct AddGroceryList_Previews: PreviewProvider {
    static var previews: some View {
        AddGroceryList(name: "grocery list")
    }
}
