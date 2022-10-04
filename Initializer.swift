//
//  Initializer.swift
//  SwiftFulThinkingBootcamp
//
//  Created by Louis REY on 04/10/2022.
//

import SwiftUI

struct Initializer: View {
    
    var backgroundColor: Color
    let count: Int
    var title: String
    
    init(count: Int, title: String, fruit: Fruit) {
        self.count = count
        self.title = title
        
        if title == "Apples" {
            self.backgroundColor = .red
        } else {
            self.backgroundColor = .orange
        }
        
        if fruit == .apple {
            
            self.title = "Choice enum is Apple"
            self.backgroundColor = .red

        } else {
            
            self.title = "Choice enum is Orange"
            self.backgroundColor = .orange
        }
    }
    
    
    
    enum Fruit {
        case apple
        case orange
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
            HStack {
                Initializer(count: 100, title: "Apples", fruit: .apple)
                Initializer(count: 30, title: "Orange", fruit: .orange)
            }
        }
    }

