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
                .navigationBarTitle(Text("KJSwiftUI"))
            HomeView()
                .navigationBarTitle(Text("Home"))
        }
        //.navigationViewStyle(StackNavigationViewStyle())
    }
}

/// Main view for the application
fileprivate struct MasterView: View {
    var body: some View {
        List {
            Section(header: Text("Controls")) {
                MasterRow(name: "Buttons",
                          destination: ButtonsView())
                MasterRow(name: "DatePickers",
                          destination: UnimplementedView(name: "DatePickers"))
                MasterRow(name: "Pickers",
                          destination: PickersView())
                MasterRow(name: "Sliders",
                          destination: UnimplementedView(name: "Sliders"))
                MasterRow(name: "Steppers",
                          destination: UnimplementedView(name: "Steppers"))
                MasterRow(name: "Toggles",
                          destination: UnimplementedView(name: "Toggles"))
                MasterRow(name: "Text",
                          destination: UnimplementedView(name: "Text"))
                MasterRow(name: "TextFields",
                          destination: UnimplementedView(name: "TextFields"))
            }

            Section(header: Text("Containers")) {
                MasterRow(name: "List",
                          destination: UnimplementedView(name: "List"))
                MasterRow(name: "ScrollView (Horizontal)",
                          destination: UnimplementedView(name: "ScrollView (Horizontal)"))
                MasterRow(name: "ScrollView (Vertical)",
                          destination: UnimplementedView(name: "ScrollView (Vertical)"))
                MasterRow(name: "TabView",
                          destination: UnimplementedView(name: "TabView"))
            }

            Section(header: Text("Layout")) {
                MasterRow(name: "Form",
                          destination: UnimplementedView(name: "Form"))
                MasterRow(name: "GeometryReader",
                          destination: UnimplementedView(name: "GeometryReader"))
                MasterRow(name: "HStacks",
                          destination: HStacksView())
                MasterRow(name: "Spacers",
                          destination: UnimplementedView(name: "Spacers"))
                MasterRow(name: "VStacks",
                          destination: VStacksView())
                MasterRow(name: "ZStacks",
                          destination: ZStacksView())
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

/// A row in the `MasterView` list.
fileprivate struct MasterRow<Destination>: View where Destination: View {
    var name: String
    var destination: Destination

    var body: some View {
        NavigationLink(destination: destination.navigationBarTitle(Text(name), displayMode: .inline)) {
            Text(name)
        }
    }
}

/// Empty view that shows as iPad detail view when nothing is selected.
fileprivate struct HomeView: View {
    var body: some View {
        VStack {
            Text("Select an item from the menu on the left.")
            Text("If the menu on the left is not visible, rotate the device to landscape orientation.")
        }
    }
}

/// Dummy view that stands in for a view listed in the menu but not implemented.
fileprivate struct UnimplementedView: View {
    var name: String

    var body: some View {
        Text("“\(name)” is not implemented")
            .multilineTextAlignment(.center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
