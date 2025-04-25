//
//  TaskUI.swift
//  Motiv8
//
//  Created by Lachlan America on 17/4/2025.
//
import SwiftUI

struct TaskCard: View {
    @EnvironmentObject var ego: EgoModel
    let task: TaskModel

    var body: some View {
        HStack {
            // Icon display
            Image(systemName: task.category.iconName).frame(width: 40, height: 40)
                .font(Font.title) // controls size
                .foregroundColor(.black)
                .background(task.category.gradient.clipShape(RoundedRectangle(cornerRadius: 10)).padding(-10))
            // TODO: See how to adjust the spacing
            Spacer()
            // Task description
            Text(task.description).font(.headline).foregroundStyle(.white)
            // Following spacer
            Spacer()
            // Button's action and how its perceived on task completion
            Button {
                task.complete()
                ego.takeDamage(task.damage)
            } label: {
                Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(task.isCompleted ? .green : .gray)
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 12)
            .fill(Color.init(hue: 0, saturation: 0, brightness: 0.15))
            .shadow(radius: 2))
    }
}



