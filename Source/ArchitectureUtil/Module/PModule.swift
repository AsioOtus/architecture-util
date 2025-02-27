public protocol PModule {
    associatedtype Screen
    associatedtype DefaultVM: PBaseViewModel<Interactor, Event> = BaseViewModel<Interactor, Event>
    associatedtype Event = Never
    associatedtype Factory: PBaseFactory = GenericFactory<DefaultVM>
    associatedtype Interactor: PBaseInteractor = EmptyInteractor
}
