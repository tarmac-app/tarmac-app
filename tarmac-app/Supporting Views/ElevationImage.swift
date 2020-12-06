//
//  ElevationImage.swift
//  tarmac-app
//
//  Created by Oliver Jiang on 12/5/20.
//

import SwiftUI

struct ElevationImage: View {
    
    var image_el: Image
    
    var body: some View {
        image_el
            .resizable()
            .frame(width: .infinity, height: 150)
        
    }
}

struct ElevationImage_Previews: PreviewProvider {
    static var previews: some View {
        ElevationImage(image_el: Image("cp-elevation"))
    }
}
