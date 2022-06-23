//
//  ContentView.swift
//  Bullseye
//
//  Created by Isabelle Chang on 6/20/22.
//

import SwiftUI

//content view has a body, which is a text view which has padding
struct ContentView: View {
    
    @State private var alert1IsVisible = false // false is initial value, since alert isn't visible when we first start
    @State private var sliderValue = 50.0 // need to make binding to slider value
    
    @State private var game = Game() // variable game of type Game; Game() creates an instance of Game
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯 \nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text(String(game.target)) // can also use "\(game.target)"
                .bold()
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            
            HStack {
                Text("1")
                    .bold()
                    .font(.body)
                Slider(value: $sliderValue, in:1.0...100.0)
                Text("100")
                    .bold()
                    .font(.body)
            }
            Button(action:{
                print("Hello, SwiftUI!")
                alert1IsVisible = true
                //self is a keyword meaning this particular instance of contentview
                }) {
                    Text("Hit me")
                }
                .alert(isPresented: $alert1IsVisible, content: {
                    let sliderInt = Int(sliderValue.rounded())
                    return Alert(title: Text("Results"), message: Text("The slider's value is: \(sliderInt) \n You have earned \(game.points(sliderInt: sliderInt)) points!"), dismissButton: .default(Text("Awesome!")))
            })
             
        }
    }
}

//controls the previews we see
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
             // shows us standard portrait preview
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320)) // width and height values correspond to aspect ratio values for landscape
    }
}
