

import SwiftUI

struct WineCardView: View {
    let wineType: WineType
    
    var body: some View {
        HStack(spacing: 15) {
            Image(wineType.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 60)
                .cornerRadius(12)
                .shadow(radius: 5)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(wineType.name)
                    .font(.title)
                    .foregroundColor(wineType.wineColor)
                    .fontWeight(.bold)
                
                Text(wineType.description)
                    .font(.body)
                    .lineLimit(2)
                    .foregroundColor(Color.gray)
                
                Spacer()
                
                NavigationLink(destination: WineDetailView(wineType: wineType)) {
                    Text("View Details")
                        .foregroundColor(wineType.wineColor)
                        .font(.headline)
                }
            }
        }
        .padding(EdgeInsets(top: 12, leading: 0, bottom: 12, trailing: 0))
    }
}



