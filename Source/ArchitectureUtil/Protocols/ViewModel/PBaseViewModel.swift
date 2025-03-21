import Combine
import Foundation

public protocol PBaseViewModel<Interactor, Event>: AnyObject, ObservableObject {
    associatedtype Interactor
    associatedtype Event
    associatedtype Events: Publisher<Event, Never>

    var interactor: Interactor { get }
    var events: Events { get }
}
