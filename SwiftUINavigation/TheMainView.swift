//
//  TheMainView.swift
//  SwiftUINavigation
//
//  Created by Matthew Mould on 10/06/2022.
//

import Foundation
import SwiftUI

struct TheMainView: View {
    private var items = [SomeItem("Item A"), SomeItem("Item B"), SomeItem("Item C")]

    var body: some View {
        List(items) { item in
            NavigationLink(item.value, value: item)
        }
    }
}
