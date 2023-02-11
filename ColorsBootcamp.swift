//
//  ColorsBootcamp.swift
//  SwiftFulThinkingBootcamp
//
//  Created by Louis REY on 20/12/2022.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
              // Color.secondary 
              //  Color(CGColor(red: 0, green: 01, blue: 01, alpha: 01))
              //  Color(uiColor: .secondarySystemBackground)
                Color("CustomColor")
            )
                    .frame(width: 300, height: 200)
                    .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: 15, y: -20)
            
                }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
