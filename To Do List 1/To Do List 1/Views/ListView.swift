//
//  ListView.swift
//  To Do List 1
//
//  Created by Anar Abbas on 16.01.2023.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
        ItemModel(title: "This is  first title!", isComplated: false),
        ItemModel(title: "This is second", isComplated: true),
        ItemModel(title: "Third", isComplated: false)
   
   
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
               // ListRowView(title: item)
            }
            
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
                            leading: EditButton(),
                            trailing:
                            NavigationLink("Add", destination: AddView())
            )
          }
       }
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}



