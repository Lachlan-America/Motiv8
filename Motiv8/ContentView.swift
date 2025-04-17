//
//  ContentView.swift
//  Motiv8
//
//  Created by Lachlan America on 16/4/2025.
//
// option + cmd + < = fold and > for unfold
// Modifiers get applied in sequence --> inner elements first and then overarching

import SwiftUI
import CoreData

struct ContentView: View {
    // Global var
    @Environment(\.managedObjectContext) private var viewContext
    
    // Fetches things from Core Data
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    var body: some View {
        // 10 views max - Spacer acts as a view too
        TaskListView()
    }
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
