//
//  ScrollViewVertical.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

fileprivate let numbers = [
    "Zero",
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Eleven",
    "Twelve",
    "Thirteen",
    "Fourteen",
    "Fifteen",
    "Sixteen",
    "Seventeen",
    "Eighteen",
    "Nineteen",
    "Twenty",
    "Twenty-one",
    "Twenty-two",
    "Twenty-three",
    "Twenty-four",
    "Twenty-five",
    "Twenty-six",
    "Twenty-seven",
    "Twenty-eight",
    "Twenty-nine",
    "Thirty"
]

struct ScrollViewVertical: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            HStack {
                Spacer()

                VStack {
                    ForEach(numbers, id: \.self) { number in
                        Text(number)
                    }
                }

                Spacer()
            }
        }
        .font(Font.custom("Futura", size: 50))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ScrollViewVertical_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrollViewVertical()
                .navigationBarTitle("ScrollViewVertical", displayMode: .inline)
        }
    }
}
