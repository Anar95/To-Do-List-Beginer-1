//
//  ListRowView.swift
//  To Do List 1
//
//  Created by Anar Abbas on 16.01.2023.
//

import SwiftUI

struct ListRowView: View {
    let title:String
    
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}
struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "This is mt first item!")
    }
}
