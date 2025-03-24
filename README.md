** project files structure:

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
│   │   └── CoreDataManager.swift
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
