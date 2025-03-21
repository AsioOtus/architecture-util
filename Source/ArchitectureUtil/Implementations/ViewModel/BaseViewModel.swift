import Combine
import Foundation

open class BaseViewModel<Interactor: PBaseInteractor, Event>: PBaseViewModel {
    public let interactor: Interactor

    public var subscriptions = Set<AnyCancellable>()
    public let events = PassthroughSubject<Event, Never>()

    public init (interactor: Interactor) {
        self.interactor = interactor

        subscribeInteractor()
        subscribe()
    }

    open func subscribeInteractor () {
        self.interactor
            .objectWillChange
            .receive(on: DispatchQueue.main)
            .sink { [weak self] _ in self?.objectWillChange.send() }
            .store(in: &subscriptions)
    }

    open func subscribe () { }
}
