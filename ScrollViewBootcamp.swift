//
//  ScrollViewBootcamp.swift
//  SwiftFulThinkingBootcamp
//
//  Created by louis on 27/01/2023.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView {
            VStack {
                Rectangle()
                    .frame(width: 250, height: 300)
                    .foregroundColor(.gray)
                    .padding()
                
                Rectangle()
                    .frame(width: 250, height: 300)
                    .foregroundColor(.gray)
                    .padding()
                
                Rectangle()
                    .frame(width: 250, height: 300)
                    .foregroundColor(.gray)
                    .padding()
            }
        }
        
        ScrollView {
            /// optimise le chargement des données
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        /// optimise le chargement des données
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }

                        }
                    }
                }
                            }
        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
