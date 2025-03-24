# Clean Architecture - SwiftUI Sample Project

## Project Structure


MyApp
│
├── Core
│   ├── Entities
│   │   └── Item.swift
│   ├── UseCases
│   │   └── GetItemsUseCase.swift
│   └── Repositories
│       └── ItemRepository.swift
│
├── Data
│   ├── Network
│   │   └── NetworkManager.swift
│   ├── Persistence
│   │   ├── CoreDataManager.swift
│   │   └── ItemPersistence.swift
│   └── DataRepositories
│       └── ItemRepositoryImpl.swift
│
├── Presentation
│   ├── Views
│   │   └── HomeView.swift
│   ├── ViewModels
│   │   └── HomeViewModel.swift
│   └── Composables
│       └── ItemRow.swift
│
├── Resources
│   ├── Assets
│   └── Localizations
│
└── App
    ├── AppDelegate.swift
    ├── SceneDelegate.swift
    └── MyApp.swift


    
## Architecture Overview

This project follows Clean Architecture principles, divided into three main layers:

### Core Layer
Contains business logic and domain entities
- **Entities**: Business models
- **UseCases**: Business logic operations
- **Repositories**: Interfaces for data operations

### Data Layer
Implements data access and storage
- **Network**: API communication
- **Persistence**: Local storage (CoreData)
- **DataRepositories**: Implementation of Core repositories

### Presentation Layer
Handles UI and user interaction
- **Views**: SwiftUI views
- **ViewModels**: Presentation logic and state management
- **Composables**: Reusable UI components

## Benefits of this Architecture

- **Separation of Concerns**: Each layer has a specific responsibility
- **Testability**: Business logic can be tested independently of UI or external dependencies
- **Maintainability**: Easier to update or replace components without affecting the entire application
- **Scalability**: New features can be added without modifying existing code

## Dependencies

- SwiftUI for UI
- Combine for reactive programming
- CoreData for local persistence

## Getting Started

1. Clone the repository
2. Open `MyApp.xcodeproj`
3. Build and run the project

## License

[Include your license information here]
