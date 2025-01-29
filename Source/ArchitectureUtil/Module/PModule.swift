public protocol PModule {
    associatedtype Interactor: PBaseInteractor = EmptyInteractor
    associatedtype Event = Never
    associatedtype DefaultVM: PBaseViewModel<Interactor, Event> = BaseViewModel<Interactor, Event>
    associatedtype Factory: PBaseFactory = GenericFactory<DefaultVM>
}
