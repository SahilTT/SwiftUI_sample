

import SwiftUI

struct WineDetailView: View {
    let wineType: WineType
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            Image(wineType.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
            Text(wineType.name)
                .font(.largeTitle).bold()
                .foregroundColor(wineType.wineColor)
                .padding(EdgeInsets(top: 15, leading: 8, bottom: 10, trailing: 8))
            Text(wineType.description)
                .multilineTextAlignment(.center)
                .lineSpacing(5)
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            
            Spacer()
        }
    }
}
