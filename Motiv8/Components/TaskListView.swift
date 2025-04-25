//
//  TaskListView.swift
//  Motiv8
//
//  Created by Lachlan America on 17/4/2025.
//
import SwiftUI

// Singleton
struct TaskListView: View {
    // Persists across redraws; updates based on anything that uses the publishers
    @StateObject private var registry = TaskRegistry()

    var body: some View {
        //NavigationStack {
            LazyVStack(alignment: .center, spacing: 16) {
                // allCases return all the names of the cases; has to conform to CaseIterable however
                ForEach(Category.allCases.flatMap { registry.tasksByCategory[$0] ?? [] }) { task in
                    TaskCard(task: task)
                    .transition(.move(edge: .trailing))
                }
            }.frame(maxWidth: .infinity)
            //.animation(.easeInOut, value: registry)
            //.padding(.horizontal) // Optional for nice side margins
       // }
    }
}
