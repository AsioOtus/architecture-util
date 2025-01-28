public protocol PModule {
    associatedtype Interactor: PBaseInteractor
    associatedtype Event = Never
    associatedtype DefaultVM: PBaseViewModel<Interactor, Event> = BaseViewModel<Interactor, Event>
    associatedtype Factory: PBaseFactory = EmptyFactory
}
