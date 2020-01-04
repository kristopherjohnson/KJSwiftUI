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
                Spacer()
                Image(systemName: "b.circle")
            }

            Spacer()

            HStack {
                Spacer()
                Image(systemName: "c.circle")
                Spacer()
                Image(systemName: "d.circle")
                Spacer()
            }

            Spacer()

            HStack {
                Image(systemName: "e.circle")
                Spacer()
                Image(systemName: "f.circle")
            }
        }
        .padding()
    }
}

struct SpacersView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SpacersView()
                .navigationBarTitle(Text("SpacersView"), displayMode: .inline)
        }
    }
}
