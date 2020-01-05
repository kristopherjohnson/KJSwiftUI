//
//  TogglesView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

struct TogglesView: View {
    @State private var isBold = false
    @State private var isItalic = false
    @State private var isUnderline = false
    @State private var isStrikethrough = false

    private var styledSentence: some View {
        var text = Text("Use the switches to change the styling of this sentence.")

        if isBold {
            text = text.bold()
        }
        if isItalic {
            text = text.italic()
        }
        if isUnderline {
            text = text.underline()
        }
        if isStrikethrough {
            text = text.strikethrough()
        }

        return text
    }

    var body: some View {
        VStack {
            styledSentence
                .multilineTextAlignment(.center)
                .padding()

            Group {
                Toggle(isOn: $isBold)          { Text("Bold").bold() }
                Toggle(isOn: $isItalic)        { Text("Italic").italic() }
                Toggle(isOn: $isUnderline)     { Text("Underline").underline() }
                Toggle(isOn: $isStrikethrough) { Text("Strikethrough").strikethrough() }
            }
            .frame(width: 180)
        }
    }
}

struct TogglesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TogglesView()
                .navigationBarTitle("TogglesView", displayMode: .inline)
        }
    }
}
