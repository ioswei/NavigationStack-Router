//
//  ViewSpec.swift
//  RouterWithNavigationStack
//
//  Created by iOS-Awei on 01/05/2023.
//

import Foundation

enum ViewSpec: Equatable, Hashable {
    
    case main
    case list
    case detail(String)
    case alert
}

extension ViewSpec: Identifiable {
    
    var id: Self { self }
}
