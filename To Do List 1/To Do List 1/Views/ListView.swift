//
//  ListView.swift
//  To Do List 1
//
//  Created by Anar Abbas on 16.01.2023.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            Text("Hi")
        }
        .navigationTitle("Todo List 📝")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
