//
//  DataModels.swift
//  Motiv8
//
//  Created by Lachlan America on 17/4/2025.
//
import SwiftUI

enum TaskTime: String, CaseIterable {
    case morning, afternoon, evening, other
    // Don't need an instance to run this
    static func from(date: Date) -> TaskTime {
        // Returns the current time partition for the hr
        let hour = Calendar.current.component(.hour, from: date)
        switch hour {
            case 6..<12: return .morning
            case 12..<17: return .afternoon
            case 17..<22: return .evening
            default: return .other
        }       
    }
}

// Task's attributes
class TaskModel: ObservableObject, Identifiable {
    let id = UUID()
    let description: String
    let category: Category
    let time: TaskTime
    let damage: Int = 20
    // Difficulty constraints
    let baseDifficulty: Double = 1.0
    var currentDifficulty: Double = 1.0
    // Check if it is available right now
    var isAvailableNow: Bool {
        // Logic to check current time and day
        let now = Date()
        return TaskTime.from(date: now) == time
    }
    
    @Published var isCompleted: Bool = false

    init(description: String, category: Category, time: TaskTime) {
        self.description = description
        self.category = category
        self.time = time
    }
    
    func complete() {
        isCompleted = !isCompleted
    }
}

// Where all the tasks are defined
class TaskRegistry: ObservableObject {
    @Published var tasksByCategory: [Category: [TaskModel]] = [:]

    init() {
        tasksByCategory = [
            .social: [
                TaskModel(description: "Say good morning to 3 people", category: .social,time: TaskTime.morning),
                TaskModel(description: "Ask a question in public", category: .social, time: TaskTime.morning)
            ],
            .focus: [
                TaskModel(description: "Meditate for 20 minutes", category: .focus, time: TaskTime.morning),
                TaskModel(description: "Journal 5 things you're grateful for", category: .focus, time: TaskTime.morning)
            ],
            .physical: [
                TaskModel(description: "Go for a 15min walk outside", category: .physical, time: TaskTime.morning),
                TaskModel(description: "Do a gym workout", category: .physical, time: TaskTime.morning),
                TaskModel(description: "Do a Muay Thai session", category: .physical, time: TaskTime.morning)
            ]
        ]
    }
}

