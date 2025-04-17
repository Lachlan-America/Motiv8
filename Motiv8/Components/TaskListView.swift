//
//  TaskListView.swift
//  Motiv8
//
//  Created by Lachlan America on 17/4/2025.
//
import SwiftUI

struct TaskListView: View {
    // I created and manage this object?
    @StateObject private var registry = TaskRegistry()

    var body: some View {
        NavigationStack {
            List {
                ForEach(Category.allCases) { category in
                    Section(header: Text(category.rawValue.capitalized)) {
                        ForEach(registry.tasksByCategory[category] ?? []) { task in
                            TaskCard(task: task)
                        }
                    }
                }
            }
            .navigationTitle("Exposure Tasks")
        }
    }
}
