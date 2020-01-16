//
//  FontsView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI
import UIKit

fileprivate let shortSpecimen = "The quick brown fox jumps over the lazy dog."

/// Displays all available fonts in a vertically scrolling view.
struct FontsView: View {
    private static let fontNames: [String] = {
        var names = [String]()
        for familyName in UIFont.familyNames {
            names.append(contentsOf: UIFont.fontNames(forFamilyName: familyName))
        }
        return names.sorted()
    }()

    @State private var loremIsVisible = false

    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                HStack {
                    Spacer()
                    Toggle("Show lorem ipsum", isOn: $loremIsVisible)
                        .fixedSize()
                    Spacer()
                }
                Divider()
                ForEach(FontsView.fontNames, id: \.self) { fontName in
                    VStack {
                        Text(fontName)
                            .font(.caption)
                        Text(shortSpecimen)
                            .font(Font.custom(fontName, size: 20))
                            .multilineTextAlignment(.center)
                            .padding(4)
                        if self.loremIsVisible {
                            Text(loremIpsum)
                                .font(Font.custom(fontName, size: 17))
                                .padding(4)
                        }
                    }
                }
            }
            .padding()
        }
    }
}

struct FontsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FontsView()
                .navigationBarTitle("Fonts", displayMode: .inline)
        }
    }
}
