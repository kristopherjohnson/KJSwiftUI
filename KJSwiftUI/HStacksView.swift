//
//  HStacksView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

struct HStacksView: View {
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: "a.circle")
            Image(systemName: "b.circle")
            Image(systemName: "c.circle")
            Image(systemName: "d.circle")
            Image(systemName: "e.circle")
            Text("Text")
        }
    }
}

struct HStacksView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HStacksView()
                .navigationBarTitle("HStacksView", displayMode: .inline)
        }
    }
}
