//
//  TextViews.swift
//  Bullseye
//
//  Created by Isabelle Chang on 6/27/22.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .foregroundColor(Color("TextColor"))
            .bold()
            .kerning(2)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
    }
}

struct BigNumberText: View {
    var text: String
    
    var body: some View {
        Text(text) // can also use "\(game.target)"
            .foregroundColor(Color("TextColor"))
            .bold()
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
    }
}

struct SliderLabelText: View {
    var text: String
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .bold()
            .font(.body)
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Instructions")
            BigNumberText(text: "999")
        }
    }
}
