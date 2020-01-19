//
//  HStacksView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

struct HStacksView: View {
    var body: some View {
        ScrollView {
            Text("VerticalAlignment.top")
                .font(.caption)
                .padding(.top)
            HStack(alignment: .top) {
                Rectangle()
                    .frame(width: 25, height: 35)
                Rectangle()
                    .frame(width: 25, height: 45)
                Rectangle()
                    .frame(width: 25, height: 75)
                Rectangle()
                    .frame(width: 25, height: 15)
                Rectangle()
                    .frame(width: 25, height: 20)
                Rectangle()
                    .frame(width: 25, height: 50)
            }
            .foregroundColor(.blue)

            Text("VerticalAlignment.center")
                .font(.caption)
                .padding(.top)
            HStack(alignment: .center) {
                Rectangle()
                    .frame(width: 25, height: 35)
                Rectangle()
                    .frame(width: 25, height: 45)
                Rectangle()
                    .frame(width: 25, height: 75)
                Rectangle()
                    .frame(width: 25, height: 15)
                Rectangle()
                    .frame(width: 25, height: 20)
                Rectangle()
                    .frame(width: 25, height: 50)
            }
            .foregroundColor(.orange)

            Text("VerticalAlignment.bottom")
                .font(.caption)
                .padding(.top)
            HStack(alignment: .bottom) {
                Rectangle()
                    .frame(width: 25, height: 35)
                Rectangle()
                    .frame(width: 25, height: 45)
                Rectangle()
                    .frame(width: 25, height: 75)
                Rectangle()
                    .frame(width: 25, height: 15)
                Rectangle()
                    .frame(width: 25, height: 20)
                Rectangle()
                    .frame(width: 25, height: 50)
            }
            .foregroundColor(.green)

            Text("VerticalAlignment.firstTextBaseline")
                .font(.caption)
                .padding(.top)
            HStack(alignment: .firstTextBaseline)
            {
                Text("One")
                    .font(.headline)
                Text("Two")
                    .font(.subheadline)
                Text("Three")
                    .font(.largeTitle)
                Text("Four")
                    .font(.title)
            }
        }
    }
}


struct HStacksView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HStacksView()
                .navigationBarTitle("HStacksView", displayMode: .inline)
        }
    }
}
