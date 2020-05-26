//
//  ContentView.swift
//  SeanCard
//
//  Created by Sean Barton on 2020-05-26.
//  Copyright © 2020 Sean Barton. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.83, green: 0.33, blue: 0.0, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("sean-head2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                Text("Sean Barton")
                    .font(Font.custom("Lobster-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("Software Engineer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                
                InfoView(text: "+1 403 556 5849", imageName: "phone.fill", imageColour: Color(red: 0.83, green: 0.33, blue: 0.0))

                InfoView(text: "sean@fearanrigh.com", imageName: "envelope.fill", imageColour: Color(red: 0.83, green: 0.33, blue: 0.0))
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    
    let text: String
    let imageName: String
    let imageColour: Color
    
    var body: some View {
        Capsule()
            .fill(Color.white)
            .frame(height: 50, alignment: Alignment.center)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(imageColour)
                Text(text)
                .foregroundColor(Color("Info Colour"))
            })
            .padding(.all)
    }
}
