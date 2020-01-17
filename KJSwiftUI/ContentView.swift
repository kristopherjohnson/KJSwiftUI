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
            Section(header: Text("Controls/Elements")) {
                MasterRow(name: "Buttons",
                          destination: ButtonsView())
                MasterRow(name: "DatePickers",
                          destination: DatePickersView())
                MasterRow(name: "Pickers",
                          destination: PickersView())
                MasterRow(name: "Shapes",
                          destination: ShapesView())
                MasterRow(name: "Sliders",
                          destination: SlidersView())
                MasterRow(name: "Steppers",
                          destination: SteppersView())
                MasterRow(name: "Toggles",
                          destination: TogglesView())
                MasterRow(name: "Text",
                          destination: TextsView())
                MasterRow(name: "TextFields",
                          destination: TextFieldsView())
            }

            Section(header: Text("Containers")) {
                MasterRow(name: "Form",
                          destination: FormView())
                MasterRow(name: "List",
                          destination: ListView())
                MasterRow(name: "ScrollView (Horizontal)",
                          destination: ScrollViewHorizontal())
                MasterRow(name: "ScrollView (Vertical)",
                          destination: ScrollViewVertical())
                MasterRow(name: "TabView",
                          destination: UnimplementedView(name: "TabView"))
            }

            Section(header: Text("Layout")) {
                MasterRow(name: "Alignment Guides",
                          destination: UnimplementedView(name: "Alignment Guides"))
                MasterRow(name: "GeometryReader",
                          destination: UnimplementedView(name: "GeometryReader"))
                MasterRow(name: "HStacks",
                          destination: HStacksView())
                MasterRow(name: "Spacers",
                          destination: SpacersView())
                MasterRow(name: "VStacks",
                          destination: VStacksView())
                MasterRow(name: "ZStacks",
                          destination: ZStacksView())
            }

            Section(header: Text("Miscellaneous")) {
                MasterRow(name: "Fonts",
                          destination: FontsView())
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
