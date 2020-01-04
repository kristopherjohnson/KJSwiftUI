//
//  ZStacksView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

fileprivate let heart = "\u{2665}"

struct ZStacksView: View {
    var body: some View {
        // Ace-of-hearts playing card
        ZStack {
            // Background
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.white)
                .shadow(radius: 16)

            // Center heart
            Text(heart)
                .font(Font.custom("Helvetica", size: 50))
                .foregroundColor(.red)

            // Upper-left symbols
            CornerSymbol()

            // Lower-right symbols
            CornerSymbol()
                .rotationEffect(Angle(degrees: 180))
        }
        .frame(width: 210, height: 300)
    }
}

/// Displays the "A" and suit symbol in the upper-left of the card.
fileprivate struct CornerSymbol: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("A")
                        .fontWeight(.bold)
                        .font(Font.custom("Helvetica", size: 32))
                    Text(heart)
                        .font(Font.custom("Helvetica", size: 20))
                    Spacer()
                }
                Spacer()
            }
        }
        .foregroundColor(.red)
        .padding()
    }
}

struct ZStacksView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ZStacksView()
                .navigationBarTitle(Text("ZStacksView"), displayMode: .inline)
        }
    }
}
