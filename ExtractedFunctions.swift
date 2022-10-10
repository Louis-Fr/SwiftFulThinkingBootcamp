//
//  ExtractedFunctions.swift
//  SwiftFulThinkingBootcamp
//
//  Created by Louis REY on 10/10/2022.
//

import SwiftUI

struct ExtractedFunctions: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            // background
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            // content
            contentLayer
        }
    }
    
    
    var contentLayer: some View {
        
            VStack {
                Text("Title")
                    .font(.largeTitle)
                Button(action: {
                    buttonPressed()
                }, label: {
                    Text("PressMe")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                })
            }
        
    }
    // func à l'éxterieur de contentLayer
    func buttonPressed() {
        backgroundColor = .gray
    }
}
    

struct ExtractedFunctions_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctions()
        
    }
}

