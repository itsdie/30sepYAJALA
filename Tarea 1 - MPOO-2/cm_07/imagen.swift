//
//  imagen.swift
//  cm_07
//
//  Created by Alumno on 30/09/24.
//

import Foundation
import SwiftUI

struct CircleImage: View {
    var imageName: String
    var size: CGFloat
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: size, height: size)
            .scaledToFit()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imageName: "lobo", size: 300)
    }
}
