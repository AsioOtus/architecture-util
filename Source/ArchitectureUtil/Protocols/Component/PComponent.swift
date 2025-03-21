public protocol PComponent {
    associatedtype Screen

    associatedtype DefaultVM: PBaseViewModel<Interactor, Event> = BaseViewModel<Interactor, Event>
    associatedtype Event = Never

    associatedtype Interactor: PBaseInteractor = EmptyInteractor

    associatedtype Factory: PBaseFactory<DefaultVM> = GenericFactory<DefaultVM>
}
