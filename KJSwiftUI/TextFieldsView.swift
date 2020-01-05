//
//  TextFieldsView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

struct TextFieldsView: View {
    @State private var textField1Content = "foo"
    @State private var textField2Content = "bar"
    @State private var secureTextFieldContent = ""

    var body: some View {
        VStack {
            HStack {
                Text("Text Field 1")
                Spacer()
                TextField("Text Field 1", text: $textField1Content)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 190)
            }
            HStack {
                Text("Text Field 2")
                Spacer()
                TextField("Text Field 2", text: $textField2Content)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 190)
            }
            HStack {
                // Secure text field with red border
                Text("Secure Field")
                Spacer()
                SecureField("Password", text: $secureTextFieldContent)
                    .foregroundColor(.red)
                    .frame(width: 176)
                    .padding(EdgeInsets(top: 5, leading: 7, bottom: 5, trailing: 7))
                    .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.red))
            }
            Group {
                Text("Text Field 1 contains \"\(textField1Content)\"")
                Text("Text Field 2 contains \"\(textField2Content)\"")
                Text("Secure Field contains \"")
                    + Text(secureTextFieldContent).foregroundColor(.red)
                    + Text("\"")
            }
            .font(.caption)
            Spacer()
        }
        .frame(width: 300)
        .padding()
    }
}

struct TextFieldsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TextFieldsView()
                .navigationBarTitle("TextFieldsView", displayMode: .inline)
        }
    }
}
