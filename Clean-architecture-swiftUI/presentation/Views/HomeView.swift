//
//  HomeView.swift
//  Clean-architecture-swiftUITests
//
//  Created by Mahmoud Aoata on 21.03.2025.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel: HomeViewModel
    var body: some View {
            List(viewModel.items) { item in
                rowItem(item: item)
            }
            .onAppear {
                Task {
                    await viewModel.getItems()
                }
            }
            .navigationTitle(Text("Items"))
        
    }
    
    struct rowItem: View {
        var item: ItemData
        var body: some View {
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text(item.description)
                    .font(.caption)
                Text("$\(item.price, specifier: "%2f")")
                    .font(.footnote)
            }
        }
    }
}

#Preview {
    HomeView()
}
