//
//  NPC_GeneratorApp.swift
//  NPC Generator
//
//  Created by Ed Salter on 11/2/24.
//

import SwiftUI

@main
struct NPC_GeneratorApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
