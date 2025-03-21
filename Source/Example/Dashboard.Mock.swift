import SwiftUI
import Combine
import ArchitectureUtil

extension Dashboard {
    enum Mock { }
}

extension Dashboard.Mock {
    class Interactor: Dashboard.PInteractor { }

    class ViewModel: BaseViewModel<Interactor, Never>, Dashboard.PViewModel {
        var userEvent: PassthroughSubject<Void, Never> = .init()
    }

    struct Factory: Dashboard.PFactory {
        typealias ViewModel = Dashboard.Mock.ViewModel

        func create () -> ViewModel {
            let i = Interactor()
            let vm = ViewModel(interactor: i)
            return vm
        }
    }
}
