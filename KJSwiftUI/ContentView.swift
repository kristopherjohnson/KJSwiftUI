//
//  ContentView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            MasterView()
                .navigationBarTitle(Text("KJSwiftUI"), displayMode: .inline)
            HomeView()
                .navigationBarTitle(Text("Home"))
        }
        //.navigationViewStyle(StackNavigationViewStyle())
    }
}

/// Main view for the application
struct MasterView: View {
    var body: some View {
        List {
            Section(header: Text("Controls")) {
                MasterRow(name: "Buttons",
                          destination: ButtonsView()
                            .navigationBarTitle(Text("Buttons"), displayMode: .inline))
                MasterRow(name: "Pickers",
                          destination: UnimplementedView(name: "Pickers"))
                MasterRow(name: "Sliders",
                          destination: UnimplementedView(name: "Sliders"))
                MasterRow(name: "Text",
                          destination: UnimplementedView(name: "Text"))
                MasterRow(name: "TextFields",
                          destination: UnimplementedView(name: "TextFields"))
            }

            Section(header: Text("Layout")) {
                MasterRow(name: "Forms",
                          destination: UnimplementedView(name: "Forms"))
                MasterRow(name: "GeometryView",
                          destination: UnimplementedView(name: "GeometryView"))
                MasterRow(name: "HStack",
                          destination: UnimplementedView(name: "HStack"))
                MasterRow(name: "ScrollView (Horizontal)",
                          destination: UnimplementedView(name: "ScrollView (Horizontal)"))
                MasterRow(name: "ScrollView (Vertical)",
                          destination: UnimplementedView(name: "ScrollView (Vertical)"))
                MasterRow(name: "VStack",
                          destination: UnimplementedView(name: "VStack"))
                MasterRow(name: "ZStack",
                          destination: UnimplementedView(name: "ZStack"))
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct MasterRow<Destination>: View where Destination: View {
    var name: String
    var destination: Destination

    var body: some View {
        NavigationLink(destination: destination) {
            Text(name)
        }
    }
}

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Select an item from the menu on the left.")
            Text("If the menu on the left is not visible, rotate the devices to landscape orientation.")
        }
    }
}

/// Dummy view that stands in for a view listed in the menu but not implemented.
struct UnimplementedView: View {
    var name: String

    var body: some View {
        Text("“\(name)” is not implemented")
            .navigationBarTitle(Text(name), displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
