//
//  InfoView.swift
//  SeanCard
//
//  Created by Sean Barton on 2020-05-26.
//  Copyright © 2020 Sean Barton. All rights reserved.
//

import SwiftUI

struct InfoView2: View {
    
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
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView2(text: "Hello", imageName: "phone.fill", imageColour: Color.black)
            .previewLayout(.sizeThatFits)
    }
}
