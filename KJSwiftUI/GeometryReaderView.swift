//
//  GeometryReaderView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

fileprivate let marginH = CGFloat(50)
fileprivate let marginV = CGFloat(20)

struct GeometryReaderView: View {

    var body: some View {
        GeometryReader { g in
            VStack(spacing: 4) {
                Text("Width: \(Int(g.size.width))")
                Text("Height: \(Int(g.size.height))")
            }
            .position(x: g.size.width / 2,
                      y: g.size.height / 2)

            Group {
                // Top left
                Text("\u{2196} (0, 0)")
                    .position(x: marginH,
                              y: marginV)

                // Top right
                Text("(\(Int(g.size.width)), 0) \u{2197}")
                    .position(x: g.size.width - marginH,
                              y: marginV)

                // Bottom left
                Text("\u{2199} (0, \(Int(g.size.height)))")
                    .position(x: marginH,
                              y: g.size.height - marginV)

                // Bottom right
                Text("(\(Int(g.size.width)), \(Int(g.size.height))) \u{2198}")
                    .position(x: g.size.width - marginH,
                              y: g.size.height - marginV)
            }
            .font(.caption)
        }
    }
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GeometryReaderView()
                .navigationBarTitle("GeometryReaderView", displayMode: .inline)
        }
    }
}
