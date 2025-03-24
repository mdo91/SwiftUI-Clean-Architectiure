//
//  ContentView.swift
//  Clean-architecture-swiftUI
//
//  Created by Mahmoud Aoata on 21.03.2025.
//

import SwiftUI
import CoreData

struct ContentView: View {

    @StateObject private var itemsViewModel: HomeViewModel = HomeViewModel()


    var body: some View {
        NavigationStack {
            HomeView()
        }
        .environmentObject(itemsViewModel)
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()
