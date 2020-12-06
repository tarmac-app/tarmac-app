//
//  SwiftUIView.swift
//
//  Created by Oliver Jiang on 12/3/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct TarmacRow: View {
    
    var event: Event
    
    var body: some View {
        HStack {
            event.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(event.name)
            Spacer()
        }
    }
}

struct TarmacRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TarmacRow(event:eventData[0])
            TarmacRow(event:eventData[1])
        }
        .previewLayout(.fixed(width:300, height:70))
    }
}
