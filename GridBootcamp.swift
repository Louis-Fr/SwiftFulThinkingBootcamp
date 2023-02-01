//
//  GridBootcamp.swift
//  SwiftFulThinkingBootcamp
//
//  Created by louis on 27/01/2023.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil)
    ]
    
    let columns2: [GridItem] = [
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(75), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),
    ]
    
    let columns3: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    
    let columns4: [GridItem] = [
        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
    ]
    
    
    var body: some View {
        
        /// Fixed
        LazyVGrid(columns: columns) {
            Rectangle()
            Rectangle()
            Rectangle()
            Rectangle()
            Rectangle()
            Rectangle()
            
        }
        
        /// Fixed
        LazyVGrid(columns: columns) {
            ForEach(0..<22) { index in
                Rectangle()
                    .frame(height: 50)
            }
        }
        
        /// Flexible
        LazyVGrid(columns: columns2) {
            ForEach(0..<30) { element in
                RoundedRectangle(cornerRadius: 25.0)
            }
        }
        
        /// Flexible
        LazyVGrid(columns: columns3) {
            ForEach(0..<30) { element in
                RoundedRectangle(cornerRadius: 25.0)
            }
        }
        
        /// Adapative
        LazyVGrid(columns: columns4) {
            ForEach(0..<50) { element in
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 50)
            }
        }

    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
