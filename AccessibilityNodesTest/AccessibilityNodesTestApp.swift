import SwiftUI

@main
struct AccessibilityNodesTestApp: App {
    @ObservedObject var appViewModel = AppViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView(navigation: appViewModel)
        }
    }
}

public final class AppViewModel{
    @Published public var state: AppState = .first
}

extension AppViewModel: ViewState {}
