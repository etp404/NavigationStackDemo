//
//  TheDetailView.swift
//  SwiftUINavigation
//
//  Created by Matthew Mould on 10/06/2022.
//

import Foundation
import SwiftUI

struct TheDetailView: View {
    let item: SomeItem
    var body: some View {
        Text("This is the detail view for \(item.value)")
    }
}
