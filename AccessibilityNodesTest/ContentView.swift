import SwiftUI

public enum AppState: Equatable {
    case first
    case second
}

public protocol ViewState: ObservableObject {
    var state: AppState { get set }
}

struct ContentView<Navigation: ViewState>: View {
    @ObservedObject var navigation: Navigation
    @State var isShowFirstView = true
    
    var body: some View {
        
        VStack {
            switch navigation.state {
            case .first:
                FirstView(navigation: navigation)
            case .second:
                SecondView(navigation: navigation)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(navigation: AppViewModel())
    }
}
