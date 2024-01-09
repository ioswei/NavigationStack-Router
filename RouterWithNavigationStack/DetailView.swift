//
//  DetailView.swift
//  RouterWithNavigationStack
//
//  Created by iOS-Awei on 01/05/2023.
//

import SwiftUI

struct DetailView: View {
    
    private let description: String
    @StateObject private var router: MainRouter
    
    init(description: String, router: MainRouter) {
        self.description = description
        _router = StateObject(wrappedValue: router)
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text(description)
            Button("Present Alert") {
                router.presentDetail(description: "alert+\(description)")
            }
            
            Button(action: {
                router.backDetail(.detail("alert+List"))
            }) {
                Text("to alert+List")
            }
            
            Button(action: {
                router.backRoot()
            }) {
                Text("RootView")
            }
        }
    }
}

//struct DetailView_Previews: PreviewProvider {
//    
//    static var previews: some View {
//        DetailView(description: "Description", router: MainRouter(isPresented: .constant(.detail("Details"))))
//    }
//}
