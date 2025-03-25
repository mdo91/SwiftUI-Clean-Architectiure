//
//  Utils.swift
//  Clean-architecture-swiftUI
//
//  Created by Mahmoud Aoata on 24.03.2025.
//
import Foundation

extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
        guard let url = url(forResource: file, withExtension: "json") else {
            throw BundleError.fileNotFound(name: file)
        }
        
        guard let data = try? Data(contentsOf: url) else {
            throw BundleError.dataLoadingFailed(name: file)
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            throw BundleError.decodingFailed(error: error)
        }
    }
}

enum BundleError: Error, LocalizedError {
    case fileNotFound(name: String)
    case dataLoadingFailed(name: String)
    case decodingFailed(error: Error)
    
    var errorDescription: String? {
        switch self {
        case .fileNotFound(name: let name):
            return "File '\(name).json' not found in bundle."
        case .dataLoadingFailed(name: let name):
            return "Failed to load data for file '\(name).json'."
        case .decodingFailed(error: let error):
            return "Failed to decode data: \(error.localizedDescription)."
        }
    }
}
