import SwiftUI

struct FirstView<Navigation: ViewState>: View {
    @ObservedObject var navigation: Navigation
    var model = FirstViewModel()
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.red)
            Button(action: {
                self.navigation.state = .second
            }) {
                Text(model.title)
            }
            .padding()
        }
        .containerAccessibility(identifier: "first-view")
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView(navigation: AppViewModel())
    }
}
