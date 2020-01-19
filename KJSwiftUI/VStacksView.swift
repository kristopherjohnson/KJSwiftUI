//
//  VStacksView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

struct VStacksView: View {
    var body: some View {
        ScrollView {
            Text("HorizontalAlignment.leading")
                .font(.caption)
                .padding(.top)
            VStack(alignment: .leading) {
                Rectangle()
                    .frame(width: 100, height: 20)
                Rectangle()
                    .frame(width: 40, height: 20)
                Rectangle()
                    .frame(width: 60, height: 20)
                Rectangle()
                    .frame(width: 85, height: 20)
            }
            .foregroundColor(.blue)

            Text("HorizontalAlignment.center")
                .font(.caption)
                .padding(.top)
            VStack(alignment: .center) {
                Rectangle()
                    .frame(width: 100, height: 20)
                Rectangle()
                    .frame(width: 40, height: 20)
                Rectangle()
                    .frame(width: 60, height: 20)
                Rectangle()
                    .frame(width: 85, height: 20)
            }
            .foregroundColor(.orange)

            Text("HorizontalAlignment.trailing")
                .font(.caption)
                .padding(.top)
            VStack(alignment: .trailing) {
                Rectangle()
                    .frame(width: 100, height: 20)
                Rectangle()
                    .frame(width: 40, height: 20)
                Rectangle()
                    .frame(width: 60, height: 20)
                Rectangle()
                    .frame(width: 85, height: 20)
            }
            .foregroundColor(.green)
        }
    }
}

struct VStacksView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VStacksView()
                .navigationBarTitle("VStacksView", displayMode: .inline)
        }
    }
}
