//
//  Initializer.swift
//  SwiftFulThinkingBootcamp
//
//  Created by Louis REY on 04/10/2022.
//

import SwiftUI

struct Initializer: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(backgroundColor: Color, count: Int, title: String) {
        self.backgroundColor = backgroundColor
        self.count = count
        self.title = title
    }
    
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text("\(title)")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}
    
    
    struct Initializer_Previews: PreviewProvider {
        static var previews: some View {
            Initializer(backgroundColor: .blue, count: 34, title: "Apples")
        }
    }

