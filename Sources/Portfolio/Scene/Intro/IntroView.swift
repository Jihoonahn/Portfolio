import TokamakDOM
import Foundation

struct IntroView: View {
    
    @State private var progress: CGFloat = 0
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Hello")
            PortfolioShape()
                .trim(from: 0, to: 1)
                .stroke(.blue, style: StrokeStyle(lineWidth: 1, lineCap: .round, lineJoin: .round))
                .frame(width: 900, height: 300)
        }
        .frame(width: .infinity, height: .infinity)
        .background(.black)
        .onAppear(perform: animate)
    }
}
private extension IntroView {
    static let gradient = LinearGradient(
        gradient:
            Gradient(colors: [
                .black,
                .green,
                .yellow,
                .orange,
                .red,
                .pink,
                .purple,
                .blue,
                .black
            ]
        ),
        startPoint: .leading,
        endPoint: .trailing
    )
    
    func animate() {
        withAnimation(.easeIn(duration: 6)) {
            progress = 1
        }
    }
}
