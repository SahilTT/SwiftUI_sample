

import SwiftUI
 
struct ContentView: View {
    @State private var showingDetail = false
    @State private var selectedWine: WineType?

    // WineType data
    let wineTypes: [WineType] = [
        WineType(name: "Red Wine", description: "Red wine is a type of wine made from dark-colored grape varieties. The color of red wine can vary widely, ranging from intense violet to brick red. It is known for its rich and complex flavors, which can include notes of dark fruits, spices, and oak." , imageName: "red_wine", wineColor: Color.red),
            WineType(name: "White Wine", description: "White wine is a type of wine made from green or yellowish grapes. It is typically lighter in color and often known for its crisp and refreshing taste. White wines can have flavors that range from citrus and green apple to tropical fruits and flowers.", imageName: "white_wine", wineColor: Color(red: 239 / 255, green: 205 / 255, blue: 122 / 255)),
            WineType(name: "Rosé Wine", description: "Rosé wine, often called pink wine, is made from red grapes but has a shorter contact time with the grape skins, resulting in its pink color. It is known for its fruity and floral flavors, making it a versatile and delightful wine.", imageName: "rose_wine", wineColor:  Color(red: 255 / 255, green: 178 / 255, blue: 229 / 255)),
            WineType(name: "Sparkling Wine", description: "Sparkling wine is known for its effervescence, and it can range from dry to sweet. It is often associated with celebrations and special occasions. Sparkling wines can have flavors of green apples, toast, and citrus.", imageName: "sparkling_wine", wineColor: Color(red: 148 / 255, green: 159 / 255, blue: 44 / 255))]
    
    @State private var selectedFilter = WineFilter(name: "All")
    var filteredWineTypes: [WineType] {
        if selectedFilter.name == "All" {
            return wineTypes
        } else {
            return wineTypes.filter { $0.name == selectedFilter.name }
        }
    }

    var body: some View {
        NavigationView {
            List(filteredWineTypes) { wine in
                WineCardView(wineType: wine)
            }
            .navigationBarTitle("Wine List")
            .navigationBarItems(trailing: FilterPickerView(selectedFilter: $selectedFilter))
        }
    }
}


