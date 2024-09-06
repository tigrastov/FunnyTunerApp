
import SwiftUI

let screen = UIScreen.main.bounds

@main
struct FunnyTunerApp: App {
    var body: some Scene {
        WindowGroup {
            InstrumentsSelectView()
        }
    }
}
