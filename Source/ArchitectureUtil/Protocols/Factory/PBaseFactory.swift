public protocol PBaseFactory <ViewModel> {
    associatedtype ViewModel: PBaseViewModel

    func create () -> ViewModel
}
