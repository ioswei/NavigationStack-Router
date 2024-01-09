//
//  RouterWithNavigationStackApp.swift
//  RouterWithNavigationStack
//
//  Created by iOS-Awei on 01/05/2023.
//

import SwiftUI

@main
struct RouterWithNavigationStackApp: App {
    
    @StateObject private var router = MainRouter(isPresented: .constant(.main))
    
    var body: some Scene {
        
        WindowGroup {
            MainView(router: router)
        }
    }
}
