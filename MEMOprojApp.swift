//
//  MEMOprojApp.swift
//  Shared
//
//  Created by HYEON on 2022/08/29.
//

import SwiftUI

@main
struct MEMOprojApp: App {
    @StateObject var store = MemoStore()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
        }
    }
}
