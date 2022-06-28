//
//  Shapes.swift
//  Bullseye
//
//  Created by Isabelle Chang on 6/27/22.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Circle()
                // .fill(Color.blue)
                .strokeBorder(Color.blue, lineWidth: 20.0)
                .frame(width: 200, height: 100)
            RoundedRectangle(cornerRadius: 20.0)
                .fill(Color.blue)
            Capsule()
                .fill(Color.blue)
            Ellipse()
                .fill(Color.blue)
        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
