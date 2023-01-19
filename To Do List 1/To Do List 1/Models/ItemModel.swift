//
//  ItemModel.swift
//  To Do List 1
//
//  Created by Anar Abbas on 18.01.2023.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    
    let id: String
    let title: String
    let isComplated: Bool
    
    init(id: String = UUID().uuidString, title: String, isComplated: Bool) {
        self.id = UUID().uuidString
        self.title = title
        self.isComplated = isComplated
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isComplated: !isComplated )
    }
  }

