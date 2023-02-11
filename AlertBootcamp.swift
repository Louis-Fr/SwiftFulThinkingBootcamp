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
    
    @State private var alertTitle: String = ""
    @State private var alertMessage: String = ""
    
    @State private var MyAlerts: MyAlert? = nil
    
    enum MyAlert {
        case success
        case error
    }
    
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
                        primaryButton: .destructive(Text("Delete"), action: {backgroundColor = .red}),
                        secondaryButton: .cancel())
                }
        }
        
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack {
                Button("BUTTON 1") {
                    alertTitle = "Error uploading video"
                    alertMessage = "Video could not be uploaded"
                    showAlert.toggle()
                }
                .padding()
                
                Button("BUTTON 2") {
                    alertTitle = "Success for download"
                    alertMessage = "Your video is public"
                    showAlert.toggle()
                }
                .padding()

                .alert(isPresented: $showAlert) {
                    getDisplayAlert()
                }
            }
        }
        
        VStack {
            Button("Click") {
                MyAlerts = .success
                showAlert = true
            }.padding()
            
            Button("Click 2") {
                MyAlerts = .error
                showAlert = true
            }.padding()
            
            .alert(isPresented: $showAlert) {
                alertType()
            }
        }
        
    }
    
    
    
    func getAlert() -> Alert {
        return Alert(
            title: Text(alertTitle),
            message: Text(alertMessage),
            primaryButton: .destructive(Text("Delete"), action: {backgroundColor = .red}),
            secondaryButton: .cancel())
    }
    
    func getDisplayAlert() -> Alert {
        return Alert(title: Text(alertTitle),
                     message: Text(alertMessage),
                     dismissButton: .default(Text("OK"))
        )
    }
    
    func alertType() -> Alert {
        switch MyAlerts {
        case .success:
          return  Alert(title: Text("Success"))
        case .error:
          return  Alert(title: Text("Failed"), message: nil, dismissButton: .default(Text("OK"), action: {
                backgroundColor = .brown
            }))
        default :
        return Alert(title: Text("Error"))
        }
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
