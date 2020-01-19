//
//  AlignmentGuidesView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

struct AlignmentGuidesView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(alignment: .center, spacing: 0) {
                Text("Horizontal Alignment")
                    .padding()
                Rectangle()
                    .frame(width: 50, height: 25)
                    .alignmentGuide(HorizontalAlignment.center) { d in
                        d[.leading]
                }
                Rectangle()
                    .frame(width: 75, height: 25)
                    .alignmentGuide(HorizontalAlignment.center) { d in
                        d[.trailing]
                }
                Rectangle()
                    .frame(width: 35, height: 25)
                    .alignmentGuide(HorizontalAlignment.center) { d in
                        d[.leading]
                }
                Rectangle()
                    .frame(width: 15, height: 25)
                    .alignmentGuide(HorizontalAlignment.center) { d in
                        d[.trailing]
                }
                Rectangle()
                    .frame(width: 25, height: 25)
                    .alignmentGuide(HorizontalAlignment.center) { d in
                        d[.leading]
                }
                Rectangle()
                    .frame(width: 60, height: 25)
                    .alignmentGuide(HorizontalAlignment.center) { d in
                        d[.trailing]
                }
            }
            .foregroundColor(.orange)
            .padding()

            HStack(alignment: .center, spacing: 0) {
                Text("Vertical Alignment")
                    .padding()
                Rectangle()
                    .frame(width: 25, height: 35)
                    .alignmentGuide(VerticalAlignment.center) { d in
                        d[.bottom]
                }
                Rectangle()
                    .frame(width: 25, height: 45)
                    .alignmentGuide(VerticalAlignment.center) { d in
                        d[.top]
                }
                Rectangle()
                    .frame(width: 25, height: 75)
                    .alignmentGuide(VerticalAlignment.center) { d in
                        d[.bottom]
                }
                Rectangle()
                    .frame(width: 25, height: 15)
                    .alignmentGuide(VerticalAlignment.center) { d in
                        d[.top]
                }
                Rectangle()
                    .frame(width: 25, height: 25)
                    .alignmentGuide(VerticalAlignment.center) { d in
                        d[.bottom]
                }
                Rectangle()
                    .frame(width: 25, height: 50)
                    .alignmentGuide(VerticalAlignment.center) { d in
                        d[.top]
                }
            }
            .foregroundColor(.green)
            .padding()
        }
    }
}

struct AlignmentGuidesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AlignmentGuidesView()
                .navigationBarTitle(Text("AlignmentGuidesView"), displayMode: .inline)
        }
    }
}
