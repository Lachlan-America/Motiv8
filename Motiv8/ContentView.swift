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
        ZStack{
            Color(.black).ignoresSafeArea()
            ScrollView {
                VStack(spacing: -50) {
                    EgoView()
                    TaskListView()
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 70)
                }
                .frame(height: 950)
            }.frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    let ego = EgoModel()
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext).environmentObject(ego)
    
}
