//
//  cakeApplicatiionApp.swift
//  cakeApplicatiion
//
//  Created by Kinjal Kunjadiya on 2021-12-05.
//

import SwiftUI

@main
struct cakeApplicatiionApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
