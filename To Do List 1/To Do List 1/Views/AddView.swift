//
//  AddView.swift
//  To Do List 1
//
//  Created by Anar Abbas on 17.01.2023.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""
    
    var body: some View {
        
        ScrollView{
            VStack {
                TextField("Type something here ...", text: $textFieldText )
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray)
                .cornerRadius(20)
                
                Button(action: {
                
                }, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(11)
                })
            }
          
                            
            .padding(15)
            
            
        }
        
        .navigationTitle("Add an item 🖋️")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
    }
}
