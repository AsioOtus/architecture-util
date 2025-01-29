public struct EmptyFactory<Interactor>: PBaseFactory {
    public typealias ViewModel = BaseViewModel<EmptyInteractor, Never>

    public init () { }
}
