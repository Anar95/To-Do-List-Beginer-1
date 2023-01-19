//
//  File.swift
//  To Do List 1
//
//  Created by Anar Abbas on 18.01.2023.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []{
        didSet{
            saveItems()
        }
    }
    
    
    let itemskey: String = "items_list"
    
    init(){
        getItems()
    }
    
    func getItems() {
      
        guard
            let data = UserDefaults.standard.data(forKey: itemskey),
            let saveItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else {return}
        
        self.items = saveItems
        
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
            
            
        }
        
    }
    func saveItems() {
      
        if let encodedData = try? JSONEncoder().encode(items){
            UserDefaults.standard.set(encodedData, forKey: "items_list")
            
        }
        
    }
}
