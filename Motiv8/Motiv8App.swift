//
//  Motiv8App.swift
//  Motiv8
//
//  Created by Lachlan America on 16/4/2025.
//

import SwiftUI

@main
struct Motiv8App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
