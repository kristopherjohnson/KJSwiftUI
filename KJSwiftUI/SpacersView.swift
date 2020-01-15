//
//  SpacersView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

struct SpacersView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "a.circle")
                    .imageScale(.large)
                Spacer()
                Image(systemName: "b.circle")
                .imageScale(.large)
            }

            Spacer()

            HStack {
                Spacer()
                Image(systemName: "c.circle")
                    .imageScale(.large)
                Spacer()
                Image(systemName: "d.circle")
                    .imageScale(.large)
                Spacer()
            }

            Spacer()

            HStack {
                Image(systemName: "e.circle")
                    .imageScale(.large)
                Spacer()
                Image(systemName: "f.circle")
                    .imageScale(.large)
            }
        }
        .padding()
    }
}

struct SpacersView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SpacersView()
                .navigationBarTitle("SpacersView", displayMode: .inline)
        }
    }
}
