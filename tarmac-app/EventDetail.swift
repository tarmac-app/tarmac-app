/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI

struct EventDetail: View {
    
    var event: Event
    
    var body: some View {
        VStack {
            MapView(coordinate: event.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)

            CircleImage(image: event.image)
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(event.name)
                    .font(.title)
                HStack(alignment: .top) {
                    Text(event.park)
                        .font(.subheadline)
                    Spacer()
                    Text(event.state)
                        .font(.subheadline)
                }
            }
                    
            .padding()

            Spacer()
        }
        .navigationBarTitle(Text(event.name), displayMode:.inline)
    }
}

struct EventDetail_Previews: PreviewProvider {
    static var previews: some View {
        EventDetail(event: eventData[0])
    }
}
