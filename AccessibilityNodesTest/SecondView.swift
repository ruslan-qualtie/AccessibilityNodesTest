import SwiftUI

struct SecondView<Navigation: ViewState>: View {
    @ObservedObject var navigation: Navigation
    var model = SecondViewModel()
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.green)
            Button(action: {
                self.navigation.state = .first
            }) {
                Text(model.title)
            }
                .padding()
        }
        .containerAccessibility(identifier: "second-view")
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(navigation: AppViewModel())
    }
}
