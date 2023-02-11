//
//  StateBootcamp.swift
//  SwiftFulThinkingBootcamp
//
//  Created by Louis REY on 12/01/2023.
//

import SwiftUI

struct StateBootcamp: View {
    @State private var tapCount = 0
    @State private var isActive = true
    
    
    var body: some View {
        VStack {
            Button("Tap count: \(tapCount)") {
                tapCount += 1
            }
            
            Toggle("Hello", isOn: $isActive)    }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
