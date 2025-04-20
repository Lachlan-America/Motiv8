//
//  TaskUI.swift
//  Motiv8
//
//  Created by Lachlan America on 17/4/2025.
//
import SwiftUI

struct TaskCard: View {
    // Watching a Task Instance from somewhere else?
    @ObservedObject var task: TaskModel

    var body: some View {
        HStack {
            Image(systemName: task.category.iconName)
                .font(.title) // controls size
                .foregroundColor(.black)
                .background(task.category.gradient.clipShape(RoundedRectangle(cornerRadius: 8)).padding(-10))
            Spacer()
            Text(task.description).font(.headline)
            Spacer()
            Button {
                task.complete()
            } label: {
                Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(task.isCompleted ? .green : .gray)
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 12).fill(.ultraThinMaterial).shadow(radius: 2))
    }
}



