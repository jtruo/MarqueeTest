import SwiftUI


struct MarqueeTextView: UIViewRepresentable {
    
    var customFont: UIFont
    var customText: String

    func makeUIView(context: Context) -> MarqueeLabel {
        let label = MarqueeLabel()
        label.type = .leftRight
        label.animationCurve = .linear
        label.text = customText
        label.font = customFont
        label.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        return label
        
    }
    func updateUIView(_ uiView: MarqueeLabel, context: Context) {
        uiView.text = customText
        uiView.restartLabel()
    }
}

// MARK: - Preview
struct MarqueeTextView_Previews: PreviewProvider {
    static var previews: some View {
        MarqueeTextView(customFont: UIFont(name: "sldfk", size: 14) ?? UIFont(), customText: "askdfsafdajsf")
    }
}


