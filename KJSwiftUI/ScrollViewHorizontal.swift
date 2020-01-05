//
//  ScrollViewHorizontal.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

fileprivate let numbers = [
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten"
]

struct ScrollViewHorizontal: View {
    var body: some View {
        ScrollView(.horizontal) {
            VStack {
                Spacer()

                HStack(spacing: 24) {
                    Image(systemName: "arrow.left")
                    ForEach(numbers, id: \.self) { number in
                        Text(number)
                    }
                    Image(systemName: "arrow.right")
                }
                .padding()

                Spacer()
            }
        }
        .font(Font.custom("Futura", size: 80))
    }
}

struct ScrollViewHorizontal_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrollViewHorizontal()
                .navigationBarTitle("ScrollViewHorizontal", displayMode: .inline)
        }
    }
}
