//
//  TextsView.swift
//  KJSwiftUI
//
//  Created by Kristopher Johnson on 1/4/20.
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

fileprivate let loremIpsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

struct TextsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 8) {
                Group {
                    Text(loremIpsum)
                        .allowsTightening(true)
                        .font(Font.custom("GillSans", size: 11))
                        .lineSpacing(2)
                        .padding([.horizontal, .top])

                    // Right-justified
                    Text(loremIpsum)
                        .font(Font.custom("Futura", size: 11))
                        .multilineTextAlignment(.trailing)
                        .padding(.horizontal)

                    // Single line, truncated
                    Text(loremIpsum)
                        .lineLimit(1)
                        .truncationMode(.tail)
                        .foregroundColor(.green)
                        .padding(.horizontal)
                }

                Divider()

                Group {
                    // Combined with `+` for single line
                    Text("Bold").bold() +
                        Text(" ") +
                        Text("Italic").italic() +
                        Text(" ") +
                        Text(" Strikethrough ").strikethrough() +
                        Text(" ") +
                        Text("Underline").underline()

                    Text("Baseline offset ")
                        + Text("up").baselineOffset(4)
                        + Text(" or ")
                        + Text("down").baselineOffset(-4)
                        + Text(" on line.")
                }.multilineTextAlignment(.center)

                Divider()

                Group {
                    Text("Font.body").font(.body)
                    Text("Font.callout").font(.callout)
                    Text("Font.caption").font(.caption)
                    Text("Font.footnote").font(.footnote)
                    Text("Font.headline").font(.headline)
                    Text("Font.largeTitle").font(.largeTitle)
                    Text("Font.subheadline").font(.subheadline)
                    Text("Font.title").font(.title)
                }

                Divider()

                Group {
                    Text("Font.Weight.ultraLight").fontWeight(.ultraLight)
                    Text("Font.Weight.thin").fontWeight(.thin)
                    Text("Font.Weight.light").fontWeight(.light)
                    Text("Font.Weight.regular").fontWeight(.regular)
                    Text("Font.Weight.medium").fontWeight(.medium)
                    Text("Font.Weight.semibold").fontWeight(.semibold)
                    Text("Font.Weight.bold").fontWeight(.bold)
                    Text("Font.Weight.heavy").fontWeight(.heavy)
                    Text("Font.Weight.black").fontWeight(.black)
                }

                Divider()

                Group {
                    Text("Font.Design.default")
                        .font(Font.system(size: 17, design: .default))
                    Text("Font.Design.monospaced")
                        .font(Font.system(size: 17, design: .monospaced))
                    Text("Font.Design.rounded")
                        .font(Font.system(size: 17, design: .rounded))
                    Text("Font.Design.serif")
                        .font(Font.system(size: 17, design: .serif))
                }

                // TODO: List all available fonts
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TextsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TextsView()
                .navigationBarTitle("TextsView", displayMode: .inline)
        }
    }
}
