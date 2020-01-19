//
//  AlignmentGuidesView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

struct AlignmentGuidesView: View {
    var body: some View {
        ScrollView {

            // Horizontal alignment of elements in a VStack
            VStack(alignment: .center, spacing: 2) {
                Text("Horizontal Alignment")
                    .padding()
                Rectangle()
                    .frame(width: 50, height: 20)
                    .alignmentGuide(HorizontalAlignment.center) { d in
                        d[.leading]
                }
                Rectangle()
                    .frame(width: 75, height: 20)
                    .alignmentGuide(HorizontalAlignment.center) { d in
                        d[.trailing]
                }
                Rectangle()
                    .frame(width: 35, height: 20)
                    .alignmentGuide(HorizontalAlignment.center) { d in
                        d[.leading]
                }
                Rectangle()
                    .frame(width: 15, height: 20)
                    .alignmentGuide(HorizontalAlignment.center) { d in
                        d[.trailing]
                }
                Rectangle()
                    .frame(width: 25, height: 20)
                    .alignmentGuide(HorizontalAlignment.center) { d in
                        d[.leading]
                }
                Rectangle()
                    .frame(width: 60, height: 20)
                    .alignmentGuide(HorizontalAlignment.center) { d in
                        d[.trailing]
                }
            }
            .foregroundColor(.orange)

            // Vertical alignment of elements in an HStack
            HStack(alignment: .center, spacing: 2) {
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
                    .frame(width: 25, height: 20)
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

            // Custom alignment aligns labels along their trailing edges
            VStack(alignment: .customLabelAlignment) {
                Text("Custom Alignment")
                    .padding()
                HStack(alignment: .center, spacing: 8) {
                    Text("First Label")
                        .bold()
                        .alignmentGuide(.customLabelAlignment) { d in
                            d[HorizontalAlignment.trailing]
                        }
                    Text("First Value")
                        .italic()
                }
                HStack(alignment: .center, spacing: 8) {
                    Text("Second Label")
                        .bold()
                        .alignmentGuide(.customLabelAlignment) { d in
                            d[HorizontalAlignment.trailing]
                        }
                    Text("Second Value")
                        .italic()
                }
                HStack(alignment: .center, spacing: 8) {
                    Text("Third Label")
                        .bold()
                        .alignmentGuide(.customLabelAlignment) { d in
                            d[HorizontalAlignment.trailing]
                        }
                    Text("Third Value")
                        .italic()
                }
                HStack(alignment: .center, spacing: 8) {
                    Text("Another Label")
                        .bold()
                        .alignmentGuide(.customLabelAlignment) { d in
                            d[HorizontalAlignment.trailing]
                        }
                    Text("Another Value")
                        .italic()
                }
            }
            .foregroundColor(.blue)
        }
    }
}

extension HorizontalAlignment {

    /// Custom alignment for trailing edges of labels in AlignmentGuidesView.
    fileprivate enum CustomLabelAlignment : AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            return context[HorizontalAlignment.center]
        }
    }

    fileprivate static let customLabelAlignment = HorizontalAlignment(CustomLabelAlignment.self)
}

struct AlignmentGuidesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AlignmentGuidesView()
                .navigationBarTitle(Text("AlignmentGuidesView"), displayMode: .inline)
        }
    }
}
