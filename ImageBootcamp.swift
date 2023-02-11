//
//  ImageBootcamp.swift
//  SwiftFulThinkingBootcamp
//
//  Created by Louis REY on 25/12/2022.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("person")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .scaledToFit()
         //   .scaledToFill()
            .frame(width: 300, height: 200)
            .cornerRadius(30)
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
