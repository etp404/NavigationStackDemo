//
//  SwiftUINavigationApp.swift
//  SwiftUINavigation
//
//  Created by Matthew Mould on 10/06/2022.
//

import SwiftUI

@main
struct SwiftUINavigationApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
