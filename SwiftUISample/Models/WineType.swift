

import SwiftUI

struct WineType: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let imageName: String
    let wineColor: Color
}
