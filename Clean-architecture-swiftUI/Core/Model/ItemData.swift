//
//  Item.swift
//  Clean-architecture-swiftUI
//
//  Created by Mahmoud Aoata on 21.03.2025.
//

// struct Item
import Foundation
struct ItemData: Identifiable, Decodable {
    var id: Int
    let name: String
    let description: String
    let price: Double
}

struct ItemDataResponse: Decodable {
    let data: [ItemData]
}
