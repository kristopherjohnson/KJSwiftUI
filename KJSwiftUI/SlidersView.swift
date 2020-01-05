//
//  SlidersView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

struct SlidersView: View {
    @State private var slider1Value = 25.0
    @State private var slider2Value = 0.66

    private var formattedSlider1Value: String {
        String(format: "%.0f", slider1Value.rounded())
    }

    private var formattedSlider2Value: String {
        String(format: "%.2f", Double(slider2Value))
    }

    var body: some View {
        VStack {
            VStack {
                Slider(value: $slider1Value, in: 0.0...100.0)
                HStack {
                    Text("0")
                    Spacer()
                    Text("100")
                }

                Text("Slider 1 Value: ")
                        + Text(formattedSlider1Value)
            }
            .padding(.bottom, 40)

            VStack {
                Slider(value: $slider2Value, in: 0.0...1.0)
                 HStack {
                     Text("0.0")
                     Spacer()
                     Text("1.0")
                 }

                Text("Slider 2 Value: ")
                     + Text(formattedSlider2Value)
            }
        }
        .frame(width: 300)
    }
}

struct SlidersView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SlidersView()
                .navigationBarTitle("SlidersView", displayMode: .inline)
        }
    }
}
