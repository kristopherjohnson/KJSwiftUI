//
//  PickersView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

/// Set of colors that can be chosen by the PickersView color picker
fileprivate struct PickerColor: Identifiable, Hashable {
    let id: String
    let color: Color

    init(_ id: String, _ color: Color) {
        self.id = id
        self.color = color
    }

    static let choices = [
        PickerColor("Red", .red),
        PickerColor("Orange", .orange),
        PickerColor("Yellow", .yellow),
        PickerColor("Green", .green),
        PickerColor("Blue", .blue),
        PickerColor("Purple", .purple),
        PickerColor("Pink", .pink)
    ]
}


struct PickersView: View {
    @State private var numberChoice = 3
    @State private var colorChoice = PickerColor.choices[1]

    var body: some View {
        VStack {
            Picker(selection: $numberChoice, label: Text("Digit")) {
                Text("Zero").tag(0)
                Text("One").tag(1)
                Text("Two").tag(2)
                Text("Three").tag(3)
                Text("Four").tag(4)
                Text("Five").tag(5)
                Text("Six").tag(6)
                Text("Seven").tag(7)
                Text("Eight").tag(8)
                Text("Nine").tag(9)
            }
            .foregroundColor(Color.primary)

            HStack {
                Text("Selected number: ")
                Text(String(numberChoice))
            }
            .font(.caption)

            Picker(selection: $colorChoice, label: Text("Color")) {
                ForEach(PickerColor.choices) { pickerColor in
                    Text(pickerColor.id).tag(pickerColor)
                        .foregroundColor(pickerColor.color)
                }
            }

            HStack {
                Text("Selected color: ")
                Text(colorChoice.id)
                    .foregroundColor(colorChoice.color)
            }
            .font(.caption)
        }
    }
}

struct PickersView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PickersView()
                .navigationBarTitle(Text("PickersView"), displayMode: .inline)
        }
    }
}
