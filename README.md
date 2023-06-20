# Test Riverpod app

## 1. GitFlow
Branches: master, dev, feature/name-1, bugfix/name-2.
Commit name structure: [name-1] Description
Merge request should contain no more than 40 files

## 2. Architecture
Clean Architecture + Riverpod
Dependency Injection: GetIt
Domain layer: models(there are no models in this test app), repositories, use-cases.
Data layer: entities(there are no entities in this test app), mappers from entities to domain model(no mappers in this app), implementations of repositories and providers.
Presentation layer: screens + riverpod

## 3. Project structure
Modules: core, core_ui (empty because of task requirements), data, domain, etc.
For presentation layer every feature is a separate module.

## 4. Asynchrony support
Flutter Async
