//
//  DataModels.swift
//  Motiv8
//
//  Created by Lachlan America on 17/4/2025.
//
import SwiftUI

// Category is an ENUM
enum Category: String, CaseIterable, Identifiable {
    case social, focus
    var id: String { rawValue }
    var iconName: String {
        switch self {
        case .social: return "person.fill"
        case .focus: return "book.closed.fill"
        }
    }
    var gradient: LinearGradient {
        switch self {
        case .social:
            return LinearGradient(colors: [.pink, .orange], startPoint: .top, endPoint: .bottom)
        case .focus:
            return LinearGradient(colors: [.pink, .purple], startPoint: .top, endPoint: .bottom)
        }
    }
}

class TaskModel: ObservableObject, Identifiable {
    let id = UUID()
    let description: String
    let category: Category
    
    @Published var isCompleted: Bool = false

    init(description: String, category: Category) {
        self.description = description
        self.category = category
    }

    func complete() {
        isCompleted = !isCompleted
    }
}

class TaskRegistry: ObservableObject {
    @Published var tasksByCategory: [Category: [TaskModel]] = [:]

    init() {
        tasksByCategory = [
            .social: [
                TaskModel(description: "Talk to a stranger", category: .social),
                TaskModel(description: "Make a phone call", category: .social)
            ],
            .focus: [
                TaskModel(description: "Meditate for 20 minutes", category: .focus)
            ]
        ]
    }
}

