//
//  ScrollViewVertical.swift
//  KJSwiftUI
//
//  Created by Kristopher Johnson on 1/4/20.
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

fileprivate var numbers = [
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
            ForEach(numbers, id: \.self) { number in
                Text(number)
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
