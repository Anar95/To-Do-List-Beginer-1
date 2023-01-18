//
//  ItemModel.swift
//  To Do List 1
//
//  Created by Anar Abbas on 18.01.2023.
//

import Foundation

struct ItemModel: Identifiable{
    
    let id: String = UUID().uuidString
    let title: String
    let isComplated: Bool
    
    
    
}
