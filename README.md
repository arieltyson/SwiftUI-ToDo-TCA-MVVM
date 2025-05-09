<div align="center">

# SwiftUI ToDo with TCA + MVVM 📋

## Project Description 🎨

This project showcases a clean, modular ToDo application built with modern iOS architecture patterns. It demonstrates how to structure an app using Clean Architecture principles, with clear separation between Domain, Data, and Presentation layers. The app leverages The Composable Architecture (TCA) for robust state management and testability, while providing a smooth user experience through SwiftUI's declarative UI paradigm.

<img src="https://github.com/user-attachments/assets/ff63b610-4895-468c-b0e6-0a88072172c3" alt="ToDo App Screenshot" width="400" height="400" />

</div>

<div align="center">

## Technologies Used 💻

This project is built with a carefully selected stack of modern iOS development tools and patterns:

- [x] Swift
- [x] SwiftUI
- [x] The Composable Architecture (TCA)
- [x] MVVM Pattern
- [x] Clean Architecture
- [x] Dependency Injection
- [x] Model-Driven Development

</div>

## Architecture Overview 🏗️

The project is organized into distinct layers following Clean Architecture principles:

```text
├── Domain Layer
│ ├── Models (Task entity)
│ └── UseCases (Business logic)
│
├── Data Layer
│ └── Repositories (Data access)
│
└── Presentation Layer
├── TCA Features
│ ├── State
│ ├── Action
│ ├── Environment
│ └── Reducer
└── SwiftUI Views
```

## Skills Demonstrated 🥋

This project demonstrates several advanced iOS development techniques:

- **Clean Architecture**: Clear separation of concerns with Domain, Data, and Presentation layers ensuring maintainable and testable code.

- **State Management**: Implementing a unidirectional data flow with TCA's State/Action/Environment/Reducer pattern for predictable app behavior.

- **Reactive UI**: Leveraging SwiftUI's declarative syntax and reactive binding to efficiently reflect state changes in the UI.

- **Dependency Injection**: Loose coupling between components with explicit dependencies injected through protocols for improved testability.

- **Model-Driven Development**: Using core domain entities to drive development patterns and architecture decisions.

- **Unit Testing**: Comprehensive test coverage enabled by TCA's pure reducer functions and injectable dependencies.

## Running the Project 🚀

Clone the repository and open the project in Xcode. You can run the app in the simulator or on a physical device. The app provides a simple interface to add tasks, mark them as complete, and view your task list.

## Next Steps 🔮

This foundation can be extended with:
- Persistence layer using CoreData, Realm, or SwiftData
- Data-driven code generation with tools like Sourcery
- Network integration for cloud sync
- Advanced UI features and animations
- Analytics and crash reporting

## Contributing ⚙️

Contributions are welcome! If you have ideas for improving architecture, adding features, or enhancing the developer experience, feel free to:

1. Fork the repository  
2. Create your feature branch (`git checkout -b feature/amazing-feature`)  
3. Commit your changes (`git commit -m 'Add some amazing feature'`)  
4. Push to the branch (`git push origin feature/amazing-feature`)  
5. Open a Pull Request


<div align="center">

## License 🪪

This project is licensed under the [MIT License](LICENSE), which allows you to use, modify, and distribute the code freely. Please attribute the original work appropriately if you use this project as a reference or starting point for your own.

---

Built with ❤️ using SwiftUI and The Composable Architecture

</div>
