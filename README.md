Tech Stack and Libraries
    SwiftUI: For the UI implementation.
    Combine: For reactive programming and managing API responses.
    Dependency Injection: Implemented using custom dependency containers for a clean architecture.
    CI/CD: Configured via GitHub Actions to run unit tests on pull requests.
    Data persistence: SwiftData
    Network and api integration: URLSession
    

Setup Instructions
    git clone https://github.com/magicfinger123/Carry1stAssignment.git
    open Carry1st.xcodeproj

Run the app:
    Ensure you're using Xcode 14 or later.
    Select a simulator and press Cmd+R to run the app.


Architecture
    The app follows a MVVM (Model-View-ViewModel) architecture with dependency injection for better scalability, testability, and maintainability.
  
Key Components
    Models: Represent the data structures for the API response.
    ViewModels: Handle business logic and bind data to the UI.
    Views: Use SwiftUI to render the user interface.
    Services:
    APIService: Handles API calls.
    CartService: Manages cart operations (add, remove, increase, decrease).
    Dependency Container: A lightweight implementation of dependency injection to inject services into views.

Testing
  Unit Tests
     API Service: Validates API response parsing.
                  Simulates network error scenarios.
     Cart Service: Tests add, remove, increase,  and decrease functionality. 
                   Verifies the prevention of duplicate items.
                   Ensures cart count updates correctly.
CI/CD
    GitHub Actions runs tests automatically on every pull request to ensure code quality.
Performance Optimizations
    Lazy Loading: SwiftUI's List efficiently manages large datasets with lazy loading.
    Combine Framework: Uses Publisher to manage asynchronous data streams efficiently.
    Image Caching: Cached images to reduce redundant API requests and improve UI responsiveness.
    Minimized Re-renders: Used @State, @ObservedObject, and @EnvironmentObject judiciously to minimize unnecessary SwiftUI view re-renders.
Design Considerations
    The UI was kept simple to focus on core functionality.
    SwiftUI's declarative syntax ensured quick prototyping while maintaining clean code.

Conclusion
   This project demonstrates an understanding of:
     SwiftUI for building declarative UI.
     Dependency Injection for testable and maintainable code.
     Unit Testing to ensure robustness.
     CI/CD for continuous integration and code quality enforcement.
     
Let me know if further improvements or clarifications are needed! 😊
