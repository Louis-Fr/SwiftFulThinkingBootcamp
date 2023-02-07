//
//  AlertBootcamp.swift
//  SwiftFulThinkingBootcamp
//
//  Created by louis on 08/02/2023.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State private var showAlert: Bool = false
    @State private var backgroundColor: Color = .yellow
    
    var body: some View {

        
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            Button("Click here") {
                showAlert.toggle()
            }.padding()
            
            .alert(isPresented: $showAlert) {
    //            Alert(title: Text("There was an error!"))
                Alert(
                    title: Text("This is title"),
                    message: Text("Describe message"), // or nil
                    primaryButton: .destructive(Text("Delete")),
                    secondaryButton: .cancel())
            }
        }
        
        ZStack {
            backgroundColor.ignoresSafeArea()
            Button("Click there") {
                
            }
            
            .frame(alignment: .bottom)
        }
        
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
