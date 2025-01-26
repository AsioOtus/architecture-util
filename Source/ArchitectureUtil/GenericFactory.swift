public struct GenericFactory<ViewModel: PBaseViewModel>: PBaseFactory {
    let creation: () -> ViewModel

    public init (creation: @escaping () -> ViewModel) {
        self.creation = creation
    }

    public func create () -> ViewModel {
        creation()
    }
}
