//
//  ListView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

fileprivate let numericItems = [
    "Zero", "One", "Two", "Three", "Four",
    "Five", "Six", "Seven", "Eight", "Nine"
]

fileprivate let alphabetItems = [
    "Alpha", "Bravo", "Charlie", "Delta", "Echo",
    "Foxtrot", "Golf", "Hotel", "India", "Juliett",
    "Kilo", "Lima", "Mike", "November", "Oscar",
    "Papa", "Quebec", "Romeo", "Sierra", "Tango",
    "Uniform", "Victor", "Whiskey", "X-Ray", "Yankee",
    "Zulu"
]

struct ListView: View {
    var body: some View {
        List {
            Section(header: Text("Numbers")) {
                ForEach(numericItems, id: \.self) { item in
                    Text(item)
                }
            }

            Section(header: Text("Alphabet")) {
                ForEach(alphabetItems, id: \.self) { item in
                    Text(item)
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
                .navigationBarTitle(Text("ListView"), displayMode: .inline)
        }
    }
}
