

import SwiftUI

struct FilterPickerView: View {
    let filterOptions: [WineFilter] = [
        WineFilter(name: "All"),
        WineFilter(name: "Red Wine"),
        WineFilter(name: "White Wine"),
        WineFilter(name: "Rosé Wine"),
        WineFilter(name: "Sparkling Wine")
    ]
    @Binding var selectedFilter: WineFilter

    var body: some View {
        Menu {
            ForEach(filterOptions) { option in
                Button(action: {
                    selectedFilter = option
                }) {
                    Label(
                        title: { Text(option.name) },
                        icon: {
                            if option.name == selectedFilter.name {
                                Image(systemName: "checkmark")
                            }
                        }
                    )
                }
            }
        } label: {
            Image(systemName: selectedFilter.name == filterOptions[0].name ? "line.horizontal.3.decrease.circle" : "line.horizontal.3.decrease.circle.fill")
                .foregroundColor(.blue)
        }
    }
}
