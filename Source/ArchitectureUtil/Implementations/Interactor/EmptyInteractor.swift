public final class EmptyInteractor: PBaseInteractor, Sendable {
    public static let empty = EmptyInteractor()
}

extension PBaseInteractor where Self == EmptyInteractor {
    public static var empty: EmptyInteractor { .init() }
}

public extension BaseViewModel where Interactor == EmptyInteractor {
    convenience init () {
        self.init(interactor: .empty)
    }
}

public extension PBaseFactory where ViewModel == BaseViewModel<EmptyInteractor, Never> {
    func create () -> ViewModel { .init() }
}
