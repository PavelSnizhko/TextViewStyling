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

struct MarkDown: View {
    let sample: LocalizedStringKey = "With markdown you can set text to **bold**, __italics__, ~strikethrough~ or `monospaced` text simply by marking it up.  You can even add links to your text like this for a web site [Youtube Extensions](https://www.youtube.com/watch?v=Fonjd_kjDbo&t=789s)"

    var body: some View {
        NavigationStack {
            Form {
                Section("MarkDown Styles") {
                    Text("Markdown is a lightweight markup language used for formatting plain text, often utilized in online content and documentation for its simplicity and readability.")
                        .font(.caption)
                    LabeledContent("Bold") {
                        Text("This is bold and this is bold too.")
                    }
                    LabeledContent("Italics") {
                        Text("This is italics and this is italics too.")
                    }
                    LabeledContent("Strikethrough") {
                        Text("This is strikethrough and this is strikethrough too.")
                    }
                    LabeledContent("Monospaced") {
                        Text("The following is monospaced text")
                    }
                }
                Section("Links") {
                    LabeledContent("Web Link") {
                        Text("Visit [Apple:](https://apple.com)")
                    }
                    LabeledContent("Mail To") {
                        Text("Email [Pavlo Snizhko](mailto:pavel.snizhko.2000@gmail.com)")
                    }
                }
                Section("String Interpolation") {
                    Text(sample)
                    LabeledContent("Vebatim") {
                        Text(verbatim: "This is **bold**, _italics_, ~strikethrough~ and monospaced.")
                    }
                }
            }
            .navigationTitle("MarkDown")
        }
    }
}

struct MarkDown_Previews: PreviewProvider {
    static var previews: some View {
        MarkDown()
    }
}
