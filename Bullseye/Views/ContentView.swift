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
        ZStack {
            BackgroundView(game: $game)
            VStack {
                InstructionsView(game: $game)
                SliderView(game: $game, sliderValue: $sliderValue)
                HitMeButton(alert1IsVisible: $alert1IsVisible, sliderValue: $sliderValue, game: $game)
                 
            }
        }
    }
}


struct SliderView: View {
    @Binding var game: Game
    @Binding var sliderValue: Double
    var body: some View {
        HStack {
            SliderLabelText(text:"1")
            Slider(value: $sliderValue, in:1.0...100.0)
            SliderLabelText(text:"100")

        }
    }
}
struct InstructionsView: View {
    
    @Binding var game: Game // binding that provides access to state variable
    var body: some View {
        VStack {
            InstructionText(text: "🎯🎯🎯 \nPut the bullseye as close as you can to:")
                .padding(.leading, 30.0)
                .padding(.trailing, 30.0)
            BigNumberText(text: String(game.target))
        }
    }
}

struct HitMeButton: View
{
    @Binding var alert1IsVisible: Bool // false is initial value, since alert isn't visible when we first start
    @Binding var sliderValue: Double // need to make binding to slider value
    
    @Binding var game: Game // variable game of type Game; Game() creates an instance of Game
    var body: some View{
        Button(action:{
            print("Hello, SwiftUI!")
            alert1IsVisible = true
            //self is a keyword meaning this particular instance of contentview
            }) {
                Text("Hit me".uppercased())
                    .bold()
                    .font(.title3)
            }
                .padding(20.0) // go before background and foreground
                .background(
                    ZStack {
                        Color("ButtonColor")
                        LinearGradient(gradient:Gradient(colors:[Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                    })
                .foregroundColor(Color.white)
                .cornerRadius(21.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 21.0)
                        .strokeBorder(Color.white, lineWidth: 2.0)
                )
                .alert(isPresented: $alert1IsVisible, content: {
                    let sliderInt = Int(sliderValue.rounded())
                    return Alert(title: Text("Results"), message: Text("The slider's value is: \(sliderInt) \n You have earned \(game.points(sliderInt: sliderInt)) points!"), dismissButton: .default(Text("Awesome!")))
        })
    }
    
}

//controls the previews we see
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320)) // width and height values correspond to aspect ratio values for landscape
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))

    }
}
