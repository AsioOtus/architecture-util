public struct EmptyFactory: PBaseFactory {
    public typealias ViewModel = BaseViewModel<EmptyInteractor, Never>

    public init () { }
}
