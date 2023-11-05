//
//  N2KLibBuildApp.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import SwiftUI

@main
struct N2KLibBuildApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
