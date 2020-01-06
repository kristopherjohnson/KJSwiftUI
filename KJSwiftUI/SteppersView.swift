//
//  SteppersView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

struct SteppersView: View {
    @State private var stepper1Value = 10
    @State private var stepper2Value = 90

    var body: some View {
        VStack {
            Stepper(String(stepper1Value), value: $stepper1Value, in: 0...100)
                .padding()
            Stepper(String(stepper2Value), value: $stepper2Value, in: 0...100)
                .padding()
        }
        .frame(width: 170)
    }
}

struct SteppersView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SteppersView()
                .navigationBarTitle("SteppersView", displayMode: .inline)
        }
    }
}
