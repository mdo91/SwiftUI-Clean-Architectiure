//
//  GetItemUseCase.swift
//  Clean-architecture-swiftUI
//
//  Created by Mahmoud Aoata on 21.03.2025.
//

protocol GetItemsUseCase {
    func getItems() async throws -> [ItemData]
}

class GetItemUseCaseImpl: GetItemsUseCase {
    let repository : ItemRepository
    
    init(repository: ItemRepository = ItemRepositoryImpl()) {
        self.repository = repository
    }
    func getItems() async throws -> [ItemData] {
        do {
            return try await repository.getItems()
        } catch let error {
            throw error
        }
    }
}
