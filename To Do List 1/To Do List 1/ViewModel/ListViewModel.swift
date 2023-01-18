//
//  File.swift
//  To Do List 1
//
//  Created by Anar Abbas on 18.01.2023.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init(){
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "This is  first title!", isComplated: false),
            ItemModel(title: "This is second", isComplated: true),
            ItemModel(title: "Third", isComplated: false)
        ]
        items.append(contentsOf: newItems)
        
    }
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
        
        
    }
    func addItem(title: String){
        let newItem = ItemModel(title: title, isComplated: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel){
        if let index = items.firstIndex(where: { $0.id == item.id}){
            items[index] = item.updateCompletion()        }
    }
}
