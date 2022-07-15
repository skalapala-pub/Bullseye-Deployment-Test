//
//  RoundViews.swift
//  Bullseye
//
//  Created by Isabelle Chang on 6/28/22.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String //the name of the sfsymbols we're trying to use
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
            )
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String //the name of the sfsymbols we're trying to use
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 56.0, height: 56.0)
            .background(
                Circle()
                    .fill(Color("ButtonFilledBackgroundColor"))
            )
    }
}

struct RoundedRectTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title3)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: 68.0, height: 56.0)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
            )
    }
}

struct PreviewView: View { // cleans up code in roundviews_previews when we have light and dark mode
    var body: some View {
        VStack(spacing: 10){
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
            RoundedRectTextView(text: "lskdfjksdf")
        }
    }
}

struct RoundViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
