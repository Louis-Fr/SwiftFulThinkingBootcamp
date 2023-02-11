//
//  ForEach.swift
//  SwiftFulThinkingBootcamp
//
//  Created by Louis REY on 05/10/2022.
//

import SwiftUI

struct ForEachLoop: View {
    
    var data: [String] = ["Renault", "Dacia", "Renault", "Honda", "Toyota"]
    let myText: String = "test"
    
    // Loop ForEach
    // On doit lui fournir des données (collections)
    // Une plage de valeur à parcourir dans la boucle
    // identifiant = id  définit sur la valeur elle même
    // Le paramètre index stocke la valeur actuelle de la boucle
    // La vue à rendre est entre les accolades
    // Impératif de fournir un id pour mettre à jour l'élement si il est modifié ou supprimé
    // $0 fait référence au 1er paramètre de l'accolade
    
    
    var body: some View {
        
        
        
        VStack(spacing: 15) {
            ForEach(data.indices, id: \.self) { index in
                Text("\(data[index]) -> \(index)")
                    .padding(5)
            }
        }
        
            VStack {
                ForEach(data.indices, id: \.self) { index in
                        Text(self.data[index])
                }
                
                // on peut se passer du foreach
                List(1...5, id: \.self) {
                        Text("item \($0)")
                }
            }
        
        VStack {
            ForEach(data.indices, id: \.self) { index in
                Text(data[index])
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
