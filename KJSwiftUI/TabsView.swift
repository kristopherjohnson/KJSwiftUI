//
//  TabsView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

struct TabsView: View {
    var body: some View {
        TabView {
            ShapesView()
                .tabItem {
                    Image(systemName: "square.on.circle")
                    Text("Shapes")
            }

            ButtonsView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Buttons")
            }

            PickersView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Pickers")
            }

            TextsView()
                .tabItem {
                    Image(systemName: "textformat")
                    Text("Text")
            }

            FormView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Form")
            }
        }
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TabsView()
                .navigationBarTitle("TabsView", displayMode: .inline)
        }
    }
}
