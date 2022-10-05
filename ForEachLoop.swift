//
//  ForEach.swift
//  SwiftFulThinkingBootcamp
//
//  Created by Louis REY on 05/10/2022.
//

import SwiftUI

struct ForEachLoop: View {
    
    var data: [String] = ["Renault", "Dacia", "Jeep", "Honda", "Toyota"]
    /* init(data: [String]) {
        self.data = data
    } */
    let myText: String = "test"
    
    
    var body: some View {
        
        
        
        VStack(spacing: 15) {
            ForEach(data.indices) { index in
                Text("\(data[index]) : \(index)")
                    .padding(5)
            }
        }
        
            HStack {
                List(data.indices) { index in
                        Text(self.data[index])
                }
            }
    
        
        
        VStack(spacing: 30) {
            ForEach(1..<6) { index in
                HStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.brown)
                    Text("Index is: \(index)")

                }
            }
        
        }
        
    }
}



struct ForEachLoop_Previews: PreviewProvider {
    static var previews: some View {
        ForEachLoop()
    }
}
