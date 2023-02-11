//
//  TextBootcamp.swift
//  SwiftFulThinkingBootcamp
//
//  Created by Louis REY on 19/12/2022.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .font(.caption)
            .fontWeight(.black)
            .foregroundColor(Color.purple)
            .multilineTextAlignment(.trailing)
            .padding()
        Text("Placeholder")
            .multilineTextAlignment(.center)
            .font(.title)
            .fontWeight(.ultraLight)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
