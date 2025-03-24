//
//  ItemRepository.swift
//  Clean-architecture-swiftUI
//
//  Created by Mahmoud Aoata on 21.03.2025.
//
import Foundation

protocol ItemRepository {
    func getItems() async throws -> [ItemData]
}

class ItemRepositoryImpl: ItemRepository {
    // call network manager
    let network = NetworkManager.shared
    
    func getItems() async throws -> [ItemData] {
        let urlString = "https://jsonplaceholder.typicode.com/todos"
        guard let url = URL(string: urlString) else {
            fatalError("Invalid URL: \(urlString)")
        }
        do {
            
            let items: ItemDataResponse = try await network.fetch(from: nil)
            return items.data
        } catch let error {
            throw error
        }
    }
    
    
}
