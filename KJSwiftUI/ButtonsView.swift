//
//  ButtonsView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

/// Displays buttons of various styles.
struct ButtonsView: View {
    var body: some View {
        VStack(spacing: 16) {
            Button(action: {}) {
                Text("Default Button")
            }

            Button(action: {}) {
                Text("Red Button")
                    .foregroundColor(.red)
            }

            Button(action: {}) {
                Text("Bold Button")
                    .fontWeight(.bold)
            }

            Button(action: {}) {
                Text("Fancy Button")
                    .font(Font.custom("SnellRoundhand-Bold", size: 22))
            }

            Button(action: {}) {
                Text("Title Button")
                    .font(.title)
            }

            Button(action: {}) {
                Image(systemName: "magnifyingglass")
                Text("Search")
            }

            Button(action: {}) {
                Text("Bordered Button")
                    .padding()
                    .border(Color.accentColor)
            }

            Button(action: {}) {
                Text("Filled Rounded Button")
                    .padding()
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }

            HStack {
                Button(action: {}) {
                    Image(systemName: "minus.circle")
                }
                .padding(.trailing, 8)
                Button(action: {}) {
                    Image(systemName: "plus.circle")
                }
            }
            .padding()
        }
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ButtonsView()
                .navigationBarTitle("ButtonsView", displayMode: .inline)
        }
    }
}
