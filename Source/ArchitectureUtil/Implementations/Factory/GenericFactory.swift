public struct GenericFactory <ViewModel: PBaseViewModel>: PBaseFactory {
    let creation: () -> ViewModel

    public init (creation: @escaping () -> ViewModel) {
        self.creation = creation
    }

    public init (_ viewModel: ViewModel) {
        self.init { viewModel }
    }

    public func create () -> ViewModel {
        creation()
    }
}

extension GenericFactory where ViewModel == BaseViewModel<EmptyInteractor, Never> {
    public init () {
        self.init { .init() }
    }
}
