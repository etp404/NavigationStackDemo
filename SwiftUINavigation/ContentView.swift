//
//  ContentView.swift
//  SwiftUINavigation
//
//  Created by Matthew Mould on 10/06/2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    private var items = [SomeItem("Item A"), SomeItem("Item B"), SomeItem("Item C")]

    var body: some View {
        NavigationView {
            List(items) { item in
                NavigationLink(item.value) {
                    TheDetailView(itemLabel: item.value)
                }
            }
        }
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

class SomeItem: Identifiable {
    init(_ value: String) {
        self.value = value
    }
    let value: String
}


