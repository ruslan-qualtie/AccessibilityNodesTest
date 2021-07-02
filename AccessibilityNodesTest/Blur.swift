import SwiftUI

private struct DisableBlurKey: EnvironmentKey {
    static let defaultValue = false
}

extension EnvironmentValues {
    public var disableBlur: Bool {
        get { self[DisableBlurKey.self] }
        set { self[DisableBlurKey.self] = newValue }
    }
}

struct Blur: NSViewRepresentable {
    typealias NSViewType = NSVisualEffectView

    private let material: NSVisualEffectView.Material

    init(material: NSVisualEffectView.Material = .hudWindow) {
        self.material = material
    }

    func makeNSView(context: Context) -> NSVisualEffectView {
        NSVisualEffectView()
    }

    func updateNSView(_ nsView: NSVisualEffectView, context: Context) {
        nsView.material = material
        nsView.blendingMode = .withinWindow
        nsView.state = context.environment.disableBlur ? .inactive : .active
    }
}

#if DEBUG
public struct Blur_Previews: PreviewProvider {
    public static var previews: some View {
        ZStack {
            HStack {
                Rectangle()
                    .fill(Color.red)
                Rectangle()
                    .fill(Color.green)
                Rectangle()
                    .fill(Color.blue)
            }
            .padding(48)
            Blur()
        }
        .frame(width: 300, height: 200)
    }
}
#endif
