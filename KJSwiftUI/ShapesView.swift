//
//  ShapesView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
        ScrollView(.vertical) {
            HStack {
                Spacer()

                VStack {
                    Group {
                        Path { p in
                            p.move(to: CGPoint(x: 150, y: 0))
                            p.addLine(to: CGPoint(x: 200, y: 100))
                            p.addLine(to: CGPoint(x: 120, y: 65))
                            p.addLine(to: CGPoint(x: 0, y: 80))
                            p.addLine(to: CGPoint(x: 40, y: 10))
                            p.closeSubpath()
                        }
                        .stroke(Color.red, lineWidth: 3)
                        .frame(width: 208, height: 108)

                        Caption(label: "Path")
                    }

                    Group {
                        // Concentric circles
                        ZStack {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(.red)
                            Circle()
                                .frame(width: 66, height: 66)
                                .foregroundColor(.white)
                            Circle()
                                .frame(width: 33, height: 33)
                                .foregroundColor(.blue)
                        }

                        Caption(label: "Circles")
                    }

                    Group {
                        Rectangle()
                            .frame(width: 200, height: 100)
                            .foregroundColor(.blue)
                        Caption(label: "Rectangle")
                    }

                    Group {
                        RoundedRectangle(cornerRadius: 16)
                            .frame(width: 200, height: 100)
                            .foregroundColor(.orange)
                        Caption(label: "RoundedRectangle")
                    }

                    Group {
                        Ellipse()
                            .frame(width: 200, height: 100)
                            .foregroundColor(.purple)
                        Caption(label: "Ellipse")
                    }

                    Group {
                        Capsule()
                            .frame(width: 200, height: 100)
                            .foregroundColor(.red)
                        Caption(label: "Capsule")
                    }
                }.padding()

                Spacer()
            }
        }
    }
}

/// Each shape has a text caption beneath it.
fileprivate struct Caption: View {
    let label: String

    var body: some View {
        Text(label)
            .font(.caption)
            .padding(.bottom)
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ShapesView()
                .navigationBarTitle("ShapesView", displayMode: .inline)
        }
    }
}
