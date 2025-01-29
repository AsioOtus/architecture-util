import Combine
import Foundation

open class BaseViewModel<I: PBaseInteractor, Event>: PBaseViewModel {
    public let interactor: I

    public var subscriptions = Set<AnyCancellable>()
    public let events = PassthroughSubject<Event, Never>()

    public init (interactor: I) {
        self.interactor = interactor

        subscribeInteractor()
        subscribe()
    }

    open func subscribe () { }

    open func subscribeInteractor () {
        self.interactor
            .objectWillChange
            .receive(on: DispatchQueue.main)
            .sink { [weak self] _ in self?.objectWillChange.send() }
            .store(in: &subscriptions)
    }
}

extension PBaseInteractor {
    public var baseVm: BaseViewModel<Self, Never> {
        .init(interactor: self)
    }
}
