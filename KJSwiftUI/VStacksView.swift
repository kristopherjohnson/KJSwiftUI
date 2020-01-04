//
//  VStacksView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

struct VStacksView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "a.circle")
            Image(systemName: "b.circle")
            Image(systemName: "c.circle")
            Image(systemName: "d.circle")
            Image(systemName: "e.circle")
            Text("Text")
        }
    }
}

struct VStacksView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VStacksView()
                .navigationBarTitle("VStacksView", displayMode: .inline)
        }
    }
}
