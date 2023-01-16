//
//  ListView.swift
//  To Do List 1
//
//  Created by Anar Abbas on 16.01.2023.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
        "This is mt first title!",
        "This i the second!",
        "Third!"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                
                ListRowView(title: item)
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



