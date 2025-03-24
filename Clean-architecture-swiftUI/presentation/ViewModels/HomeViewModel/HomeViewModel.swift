//
//  HomeViewModel.swift
//  Clean-architecture-swiftUI
//
//  Created by Mahmoud Aoata on 21.03.2025.
//

import SwiftUI

@MainActor
public class HomeViewModel: ObservableObject {
    // MARK: - vars
    @Published var items: [ItemData] = []
    private let getItemUseCase: GetItemsUseCase
    @Published var isLoadingData = false
    @Published var error = ""
    // MARK: - init
    init(getItemUseCase: GetItemsUseCase = GetItemUseCaseImpl()) {
        self.getItemUseCase = getItemUseCase
    }
    
    // MARK: - public functions
    
    public func getItems() async {
        do {
            let itemsData = try await getItemUseCase.getItems()
            items  = itemsData
        } catch let errorItem {
            print("failure: HomeViewModel.getItems \(errorItem.localizedDescription)")
            error = "\(errorItem)"
        }
    }
}
