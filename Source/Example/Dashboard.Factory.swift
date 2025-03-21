import ArchitectureUtil

extension Dashboard {
    protocol PFactory: PBaseFactory { }

    struct Factory: PFactory {
        func create () -> DefaultVM {
            let i = Interactor()
            let vm = DefaultVM(interactor: i)
            return vm
        }
    }
}
