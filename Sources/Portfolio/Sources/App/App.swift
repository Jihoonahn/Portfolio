import TokamakDOM
import JavaScriptKit
import JavaScriptEventLoop

struct PortfolioApp: App {
    #if os(WASI)
    static let _configuration = _AppConfiguration(reconciler: .fiber(useDynamicLayout: true))
    #endif
    
    var body: some Scene {
        WindowGroup("Jihoonahn Portfolio") {
            RootView()
        }
    }
}
