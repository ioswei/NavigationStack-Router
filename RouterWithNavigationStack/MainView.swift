//
//  MainView.swift
//  RouterWithNavigationStack
//
//  Created by iOS-Awei on 01/05/2023.
//

import SwiftUI

struct MainView: View {
    
    @StateObject private var router: MainRouter
    
    init(router: MainRouter) {
        _router = StateObject(wrappedValue: router)
    }
    
    var body: some View {
        RoutingView(router: router) {
            VStack {
                Spacer()
                Button("Present List") {
                    router.presentDetail(description: "List")
                }
                
                Spacer()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    
    static var previews: some View {
        MainView(router: MainRouter(isPresented: .constant(.main)))
    }
}
