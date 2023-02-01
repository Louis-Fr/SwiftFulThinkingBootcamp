//
//  ConditionalBootcamp.swift
//  SwiftFulThinkingBootcamp
//
//  Created by louis on 31/01/2023.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("IS LOADING") {
                isLoading.toggle()
            }
            .padding()
            
            if isLoading {
                ProgressView()
            }
            
            Spacer()
            
            Button("Circle button : \(showCircle.description)") {
                showCircle.toggle()
            }
            
            Button("Rectangle button : \(showRectangle.description)") {
                showRectangle.toggle()
            }
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            
            if !showCircle && !showRectangle {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 250, height: 100)
            }
            
            Spacer()
        }
        
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
