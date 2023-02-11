//
//  ShapesBootcamp.swift
//  SwiftFulThinkingBootcamp
//
//  Created by Louis REY on 20/12/2022.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        Circle()
            // .fill()
            //.foregroundColor(.gray)
            //.stroke(Color.red, lineWidth: 15)
            //.stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
            .trim(from: 0.5, to: 1.0)
            .stroke(Color.green, lineWidth: 30)
        
        Ellipse()
            .trim(from: 0.2, to: 1.0)
            .fill(.blue)
            .frame(width: 180, height: 120)
        
        Capsule(style: .circular)
            .frame(width: 150, height: 80)
        
        Rectangle()
            .trim(from: 0.4, to: 1.0)
            .foregroundColor(.gray)
            .frame(minWidth: 20, maxWidth: 200, minHeight: 100, maxHeight: 150)
        
        RoundedRectangle(cornerRadius: 15)
            .fill(.brown)
            .frame(width: 250, height: 120)
            
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
