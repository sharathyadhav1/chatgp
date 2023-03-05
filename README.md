# chatgp

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.


In this project, we have used the MVVM Clean Architecture to create a modular, maintainable, and testable application. We have separated the concerns of each layer and made sure that they do not depend on each other. This way, we can make changes to one layer without affecting the others.

Sure, I can write a brief description for a project developed in Flutter using the MVVM Clean Architecture pattern and State Cubit method.

The MVVM Clean Architecture is a software design pattern that separates the application into layers of responsibilities, namely the presentation layer, domain layer, and data layer. The presentation layer handles the UI and user interactions, while the domain layer contains the business logic and rules, and the data layer manages the data sources.

In this project, we have used the MVVM Clean Architecture to create a modular, maintainable, and testable application. We have separated the concerns of each layer and made sure that they do not depend on each other. This way, we can make changes to one layer without affecting the others.

We have also used the State Cubit pattern to manage the state of the application. The State Cubit pattern provides a simple and predictable way to manage state by using a stream of states. The cubit listens to the stream and emits new states whenever there is a change.

We have used the http package to fetch data from the API and the flutter_bloc package to implement the State Cubit pattern.

he project has been developed using the Dart programming language and Flutter framework. We have used various libraries and packages such as http, flutter_bloc, rxdart, and equatable to create a robust and scalable application.

Libraris used for the for the project
dependencies:
flutter:
sdk: flutter
flutter_bloc: ^8.0.0 - state management 
equatable: ^2.0.3- state management and viemodel
http: ^0.13.5 - for Api calls
get_it: ^7.2.0- dependencu injection - Classes used with container 
flutter_staggered_grid_view: ^0.6.1 - essentially not needed for future purpose
cached_network_image: 3.2.3 - for future
share_plus: ^6.3.0 - share the text as
shimmer: ^2.0.0 - for future




A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
