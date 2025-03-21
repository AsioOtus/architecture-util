import ArchitectureUtil
import SwiftUI

enum Dashboard: PComponent {
    struct Screen: View {
        @StateObject var vm: DefaultVM

        var body: some View {
            Text("Dashboard")
        }
    }
}
