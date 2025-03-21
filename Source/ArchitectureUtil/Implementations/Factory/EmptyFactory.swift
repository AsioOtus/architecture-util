public struct EmptyFactory: PBaseFactory {
    public func create () -> BaseViewModel<EmptyInteractor, Never> {
        .init()
    }
}

extension PBaseFactory where Self == EmptyFactory {
    public static var empty: EmptyFactory { .init() }
}
