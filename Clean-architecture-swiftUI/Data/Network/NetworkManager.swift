//
//  NetworkManager.swift
//  Clean-architecture-swiftUI
//
//  Created by Mahmoud Aoata on 21.03.2025.
//
import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    
    private init() {}
    
    func fetch<T: Decodable>(from url: URL?) async throws -> T {

        do {
            if let url = url {
                let (data, response) = try await URLSession.shared.data(from: url)
                let decoder = JSONDecoder()
                return try decoder.decode(T.self, from: data)
            } else {
                let url = Bundle.main.url(forResource: "example", withExtension: "json")!
                let decoder = JSONDecoder()
                return try decoder.decode(T.self, from: try Data(contentsOf: url))
            }

        } catch let error {
            print("failure NetworkManager.error \(error.localizedDescription)")
            throw NetworkError.dataFetchingFailed(error)
        }
    }
    
    enum NetworkError: Error {
        case urlError(URLError)
        case decodingError(Error)
        case dataFetchingFailed(Error)
    }
}
