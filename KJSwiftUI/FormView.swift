//
//  FormView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

/// Set of colors that can be chosen by the color picker
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

struct FormView: View {
    @State private var isToggleOn = true
    @State private var sliderValue = 33.0
    @State private var stepperValue = 10
    @State private var colorChoice = PickerColor.choices[1]
    @State private var date = Date()

    private var formattedDate: String {
        let df = DateFormatter()
        df.dateStyle = .short
        df.timeStyle = .short
        return df.string(from: date)
    }
    
    var body: some View {
        Form {
            Section(header: Text("Pickers")) {
                DatePicker("Date", selection: $date)

                Picker(selection: $colorChoice, label: Text("Color")) {
                    ForEach(PickerColor.choices) { pickerColor in
                        Text(pickerColor.id).tag(pickerColor)
                            .foregroundColor(pickerColor.color)
                    }
                }
            }

            Section(header: Text("Controls")) {
                Toggle(isOn: $isToggleOn) {
                    Text("Toggle")
                }

                Stepper(value: $stepperValue, in: 0...100, step: 1, onEditingChanged: {_ in }) {
                    Text("Stepper Value: ") + Text(String(stepperValue))
                }

                Button(action: {}) {
                    Text("Tap This Button")
                }
            }

            Section(header: Text("Slider")) {
                Slider(value: $sliderValue, in: 0.0...100.0) {
                    Text("Slider")
                }
            }
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FormView()
                .navigationBarTitle(Text("FormView"), displayMode: .inline)
        }
    }
}
