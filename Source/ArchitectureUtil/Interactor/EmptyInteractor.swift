public final class EmptyInteractor: PBaseInteractor, Sendable {
    public static let empty = EmptyInteractor()
}

extension PBaseInteractor where Self == EmptyInteractor {
    public static var empty: EmptyInteractor { .init() }
}

public extension BaseViewModel where I == EmptyInteractor {
    convenience init () {
        self.init(interactor: .empty)
    }
}
