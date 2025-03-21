import ArchitectureUtil
import SwiftUI

extension Dashboard {    
    protocol PViewModel: PBaseViewModel { }

    typealias DefaultVM = ViewModel<Interactor>

    class ViewModel <Interactor: PBaseInteractor>: BaseViewModel<Interactor, Never>, PViewModel { }
}
