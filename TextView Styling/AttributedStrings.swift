//
// Created for TextView Styling
// by  Stewart Lynch on 2023-04-11
// Using Swift 5.0
// Running on macOS 13.3
// 
// Folllow me on Mastodon: @StewartLynch@iosdev.space
// Or, Twitter, if it still exits: https://twitter.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct AttributedStrings: View {
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    Section("Basic") {
                        Text("Attributed strings are character strings that have attributes for individual characters or ranges of characters. Attributes provide traits like visual styles for display, accessibility for guided access, and hyperlink data for linking between data sources.")
                            .font(.caption)
                        Text("This is important information so make sure you read it.")
                        Text("Do you use swiftUI or uiKit? in your code")
                    }
                    Section("Advanced") {
                        Text("Checkmate")
                    }
                }
                
            }
            .navigationTitle("AttributedString")
        }
    }
}

struct AttributedStrings_Previews: PreviewProvider {
    static var previews: some View {
        AttributedStrings()
    }
}
