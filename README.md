# 🧠 Motiv8 – iOS Exposure Therapy App #
### Swift | SwiftUI | Xcode ###
Motiv8 is an iOS app I’m building in Swift/Xcode designed around exposure therapy principles. The goal is to create a visual, habit-based system where users face small ego-challenging tasks and watch their “ego” visually weaken over time, turning personal growth into a game.

## Why I'm Building It ##
This app is personal. It’s based on the idea that we grow by doing the uncomfortable things — and I wanted a way to track that, not just through checkboxes, but in a way that feels rewarding and slightly weird (in a good way).

## Features ## 
- Visual feedback loop showing ego weakening as habits are completed
- Simple checklist interface for building exposure challenges
- Plans for future habit analytics and authentication (via iCloud or external backend)
The ego in its full power:
![ego_2](https://github.com/user-attachments/assets/31a39509-6791-453b-874a-2d7b43b3bdf3)
Doing more tasks weakens it as you step foot into your new identity:
![ego_1](https://github.com/user-attachments/assets/a1e0c228-5a77-4d15-93ab-91bc234b59f6)

## 📚 What I've Learned ##
- Basic UI concepts (VStack, HStack, ZStack) and layout management in Swift
- Local state management and persistent user sessions
- UX principles for User navigation
- 'some' keyword can be used to conform to a supertype, without actually specifying the type. E.g. HStack conforms to View but is a subtype. Technically an 'opaque' type
- Enums aren't just fixed value types like in other languages, but can be treated similarly to structs
- Enums and structs are value-types, which means functions that change their properties have to have the 'mutating' keyword in front of them
- Classes can still be used, but structs are thread-safe as they make a literal copy, whereas classes can have race conditions
- Design choices included the composition of UI and data, because of the DRY principle
- The use of let and var in different contexts
- How to define generic types that can be implemented on initialisation
- AssociatedType is just a defined type that is specified on conformation of a protocol
- getters and setters to save data in specific cases (can be initialized on use). Furthermore, lazy values can be computed once and then 'cached'
- switch cases with Sets and can use the where clause to specify conditions
- Closures to specify anonymous functions, but can contain their own state too

## 🚧 Roadmap ##
- [x] Add task page
- [x] Add default tasks
- [x] Add ego HP and visual deterioration of ego
- [ ] Add navigation bar
- [ ] Add completed tasks page, you can look up via calendar
- [ ] Add profile page with XP and metrics
- [ ] Add journaling and reflection page
- [ ] Add habit difficulty adaptation (increase/decrease difficulty based on user feedback)
- [ ] Backend integration for persistent user data
- [ ] Deploy on App Store

