import Combine
import Foundation

public protocol PBaseViewModel<I, Event>: AnyObject, ObservableObject {
    associatedtype I
    associatedtype Event
    associatedtype Events: Publisher<Event, Never>

    var interactor: I { get }
    var events: Events { get }
}
