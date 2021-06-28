import Foundation

class SecondViewModel {
    var title = "Switch to First"
    var object = SecondObject()
    
    init() {
        print("SecondViewModel.init")
    }
    
    deinit {
        print("SecondViewModel.deinit")
    }
}
