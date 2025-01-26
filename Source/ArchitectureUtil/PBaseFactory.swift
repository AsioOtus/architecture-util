public protocol PBaseFactory<ViewModel> {
    associatedtype ViewModel: PBaseViewModel
}

public extension PBaseFactory where ViewModel == BaseViewModel<EmptyInteractor, Never> {
    func create () -> ViewModel { .init() }
}
