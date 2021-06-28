import Foundation

class FirstViewModel {
    var title = "Switch to Second"
    var object = FirstObject()
    
    init() {
        print("FirstViewModel.init")
    }
    
    deinit {
        print("FirstViewModel.deinit")
    }
}
