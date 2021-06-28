import SwiftUI

struct ContainerAccessibility: ViewModifier {
    let identifier: String

    func body(content: Content) -> some View {
        content
            .accessibilityElement(children: .contain)
            .accessibilityIdentifier(identifier)
    }
}

extension View {
    func containerAccessibility(identifier: String) -> some View {
        modifier(ContainerAccessibility(identifier: identifier))
    }
}
