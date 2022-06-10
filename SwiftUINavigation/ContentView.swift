//
//  ContentView.swift
//  SwiftUINavigation
//
//  Created by Matthew Mould on 10/06/2022.
//

import SwiftUI
import CoreData

struct Navigation: View {
    
    var body: some View {
        NavigationStack() {
            TheMainView().navigationDestination(for: SomeItem.self) {item in
                TheDetailView(item: item, someFetcherOfThings: AFetcherOfThings())
            }
        }
    }
}

class SomeItem: NSObject, Identifiable {
    init(_ value: String) {
        self.value = value
    }
    let value: String
}


