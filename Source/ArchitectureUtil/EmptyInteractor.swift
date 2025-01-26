public final class EmptyInteractor: PBaseInteractor, Sendable {
    public static let `default` = EmptyInteractor()
}

public extension BaseViewModel where I == EmptyInteractor {
    convenience init () {
        self.init(interactor: .default)
    }
}
