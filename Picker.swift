//
//  Picker.swift
//  SwiftFulThinkingBootcamp
//
//  Created by Louis REY on 05/10/2022.
//

import SwiftUI

struct Picker: View {
    var body: some View {
        
        VStack {
            ForEach(0..<10) { index in
                Text("hi \(index)")
            }
        }
    }
}

struct Picker_Previews: PreviewProvider {
    static var previews: some View {
        Picker()
    }
}
