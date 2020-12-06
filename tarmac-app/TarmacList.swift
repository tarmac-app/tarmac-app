//
//  tarmac_appApp.swift
//  tarmac-app
//
//  Created by Oliver Jiang on 12/2/20.
//

import SwiftUI

struct TarmacList: View {
    var body: some View {
        NavigationView{
            List(eventData) {event in
                NavigationLink(destination: EventDetail(event: event)) {
                TarmacRow(event: event)
                }
            }
            .navigationBarTitle(Text("Events"))
        }
    }
}

struct TarmacList_Previews: PreviewProvider {
    static var previews: some View {
        TarmacList()
    }
}
