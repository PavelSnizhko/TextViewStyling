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

struct StringInterpolation: View {
    var body: some View {
        let pallete = Image(systemName: "paintpalette.fill").symbolRenderingMode(.multicolor)
        NavigationStack {
            VStack  {
                LabeledContent("String Interpolation with style"){
                    Text("Paint with \(Text(pallete).font(.title))")
                }
                .padding(.top, 30)
                .labeledContentStyle(.vertical)
                Form {
                    Section("Multiple text views") {
                        Text("\(Text("_Summer_").foregroundColor(.yellow)) is a great time to visit Vancouver. Make sure you check out \(Text("[Google](google.com)").underline())")
                    }
                    
                    Section("SF Symbols") {
                        LabeledContent("One Way") {
                            HStack {
                                Text("Paint with")
                                pallete
                            }
                        }
                        LabeledContent("String Interpolation"){
                            Text("Paint with \(pallete)")
                        }.labeledContentStyle(.accented)
                        
                        LabeledContent("Even better") {
                            
                        }
                    }
                }
            }
        }
        .navigationTitle("String Interpolation")
    }
}

struct AccentedLabeledContentStyle: LabeledContentStyle {
    func makeBody(configuration: Configuration) -> some View {
        LabeledContent(configuration)
            .foregroundColor(.cyan)
    }
}

extension LabeledContentStyle where Self == AccentedLabeledContentStyle {
    static var accented: AccentedLabeledContentStyle { .init() }
}

struct VerticalLabeledContentStyle: LabeledContentStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            configuration.label
            configuration.content
        }
    }
}

extension LabeledContentStyle where Self == VerticalLabeledContentStyle {
    static var vertical: VerticalLabeledContentStyle { .init() }
}

struct StringInterpolation_Previews: PreviewProvider {
    static var previews: some View {
        StringInterpolation()
    }
}
