# 📱 Flutter & Dart Learning Notes

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Bloc](https://img.shields.io/badge/State%20Management-Bloc-purple?style=for-the-badge)
![Clean Architecture](https://img.shields.io/badge/Architecture-Clean-success?style=for-the-badge)

---

## 🚀 What is Flutter?

Flutter is Google’s UI toolkit for building beautiful, fast, and native mobile applications for Android and iOS using a single codebase.

Flutter allows developers to:

- Build pixel-perfect UIs  
- Achieve native performance  
- Compile quickly  
- Integrate with existing Android & iOS code  
- Use rich widgets and animations  

Flutter is used by many organizations such as **Alibaba** and others.

---

## 🤔 Why You Should Learn Flutter?

- Easy to learn and use  
- Expressive & flexible UI  
- Native performance  
- Fast compilation (Hot Reload)  
- Excellent documentation  
- Large and growing community  

---

## 🧠 Dart Basics

### Variables & Null Safety
- Dart enforces null safety to prevent runtime errors  
- `?` → allow null  
- `!` → force non-null  
- `late` → initialized later  
- Prefer specifying data types  

### Operators
- `~/` → integer division  
- `is`, `is!` → type testing  
- `??`, `??=` → null-aware  
- `?:` → ternary  

---

## 🔢 Number Methods
- `isFinite`, `isNegative`  
- `sign`  
- `isEven`, `isOdd`, `abs()`  
- `compareTo()`  
- `floor()`, `round()`  
- `toDouble()`, `toInt()`  
- `parse()`  

---

## 🔤 String Methods

### Basic
- `length`, `isEmpty`, `isNotEmpty`

### Manipulation
- `toUpperCase()`, `toLowerCase()`  
- `trim()`, `trimLeft()`, `trimRight()`  
- `replaceAll()`, `replaceFirst()`, `replaceRange()`

### Search
- `contains()`, `startsWith()`, `endsWith()`  
- `indexOf()`, `lastIndexOf()`

### Substring & Split
- `substring()`, `split()`, `join()`

---

## 📦 Collections

### List
- `add()`, `addAll()`, `insert()`, `insertAll()`  
- `remove()`, `removeAt()`, `removeRange()`  
- `reverse`, `first`, `last`  
- `sublist()`, `shuffle()`  
- `where()`, `firstWhere()`, `any()`, `take()`

### Map
- `{key: value}`  
- `keys`, `values`, `remove()`, `forEach()`

### Set
- No duplicated values  
- Convert using:
  - `toList()`  
  - `toSet()`

---

## 🔁 Iterable & Iterators
- Iterable → List, Set  
- Iterator → `moveNext()`  
- `map()`, `where()`, `any()`

---

## ⚙️ Functions
- Can return value or be void  
- Arrow function `=>`  
- Recursive functions supported  
- Optional parameters `[]`  
- Named parameters `{}` with `required`

---

## 🧱 OOP in Dart

### Principles
- Abstraction  
- Encapsulation  
- Inheritance  
- Polymorphism  

### Concepts
- Constructors (named supported)  
- `this`, `super`  
- `extends`, `implements`  
- `@override`

---

## 🧬 Mixins & Generics

### Mixins
- Code reuse without inheritance  
- Use `with`  
- Multiple mixins allowed  
- Last mixin has priority  

### Generics
- Parameterized types  
- Improve performance  
- Written as `<T>`

---

## 🧩 Enums & Anonymous Objects
- Enums store limited values  
- Anonymous objects are unnamed class instances  

---

## 🎨 Flutter Basics
- Everything is a widget  
- Widgets start with capital letter  
- Main widget: `MaterialApp`  
- UI built using Widget Tree  

### Common Widgets
- Scaffold  
- Container  
- Row, Column  
- Wrap  
- Expanded  
- ListView, ListView.builder  
- Card, Divider  
- Stack, Positioned  
- GestureDetector  

---

## 🧭 Navigation
- State-based  
- Navigator-based  

---

## 🌐 APIs & Networking
- API = intermediary between app & server  
- Use:
  - `http`  
  - `dio` (better for files)  
- Always use `try/catch`  
- Models:
  - Factory constructor  
  - JSON → Model  

---

## 🧠 State Management
- Provider  
- Bloc / Cubit  
- Riverpod  
- GetX  

### Bloc Flow
- UI → Cubit → UseCase → Repository → DataSource
- emit() = publish new state
   
---

# Flutter Clean Architecture Example 🏗️

This repository demonstrates a Flutter project structured using **Clean Architecture** with state management, API integration, local storage, and more.

---

## Architecture Layers

The project follows **Clean Architecture** principles:

1. **Presentation Layer**  
   - Flutter UI widgets  
   - Bloc/Cubit for state management

2. **Domain Layer**  
   - Business logic  
   - Entities  
   - Use cases

3. **Data Layer**  
   - Repository implementations  
   - Remote and local data sources  

**Benefits:**
- Easy maintenance  
- Testable code  
- Reusable components  
- Clear separation of concerns  

---


## 💾 Hive Database

- Lightweight local storage  
- Stores primitive data types directly  
- Objects require a **TypeAdapter**  

**Generate TypeAdapter:**
```bash
flutter packages pub run build_runner build
```
---
  
## 📄 Pagination

- Avoid loading all data at once

- Use a page size

- Load more when reaching the bottom

Example Approach:

- Fetch initial data page

- Listen to scroll events

- Load next page dynamically

---

## ⚠️ Error Handling

- Wrap operations in try / catch blocks

- Convert exceptions into Failures

- Display user-friendly messages

---

## Design Patterns 🧰

- Singleton

- Service Locator (get_it)

- Repository Pattern

- Callable Classes

