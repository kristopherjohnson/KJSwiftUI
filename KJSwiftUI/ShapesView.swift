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
                        Path { path in
                            path.move(to: CGPoint(x: 150, y: 0))
                            path.addLine(to: CGPoint(x: 200, y: 100))
                            path.addLine(to: CGPoint(x: 120, y: 65))
                            path.addLine(to: CGPoint(x: 0, y: 80))
                            path.addLine(to: CGPoint(x: 40, y: 20))
                            path.closeSubpath()
                        }
                        .stroke(Color.red, lineWidth: 3)
                        .frame(width: 208, height: 108)
                        Text("Path")
                            .font(.caption)
                            .padding(.bottom)
                    }

                    Group {
                        Rectangle()
                            .frame(width: 200, height: 100)
                            .foregroundColor(.blue)
                        Text("Rectangle")
                            .font(.caption)
                            .padding(.bottom)
                    }

                    Group {
                        RoundedRectangle(cornerRadius: 16)
                            .frame(width: 200, height: 100)
                            .foregroundColor(.orange)
                        Text("RoundedRectangle")
                            .font(.caption)
                            .padding(.bottom)
                    }

                    Group {
                        Circle()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.green)
                        Text("Circle")
                            .font(.caption)
                            .padding(.bottom)
                    }

                    Group {
                        Ellipse()
                            .frame(width: 200, height: 100)
                            .foregroundColor(.purple)
                        Text("Ellipse")
                            .font(.caption)
                            .padding(.bottom)
                    }

                    Group {
                        Capsule()
                            .frame(width: 200, height: 100)
                            .foregroundColor(.red)
                        Text("Capsule")
                            .font(.caption)
                            .padding(.bottom)
                    }
                }.padding()

                Spacer()
            }
        }
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
