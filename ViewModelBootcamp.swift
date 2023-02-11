//
//  ViewModelBootcamp.swift
//  SwiftFulThinkingBootcamp
//
//  Created by Louis REY on 15/12/2022.
//

import SwiftUI


struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

// La Classe est Observable, les vues de notre app peuvent observer ce qui se passe dans notre ViewModel
class FruitViewModel: ObservableObject {
    
    // @Published est l'équivalent de @State pour les Classes
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 3)
        let fruit4 = FruitModel(name: "Lemon", count: 4)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.fruitArray.append(fruit4)
            self.isLoading = false
        }
        
        
    }
    
    func removeFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {
    /// @StateObject -> USE THIS ON CREATION / INIT
    /// ObservedObject -> USE THIS FOR SUBVIEWS
    
    // Property Wrapper qui informe la vue en cas de changement et la met à jour
    // Nous utlisons l'objet observé dans le ViewModel
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    // l'object ne se rafraichira pas
    // La 1ére fois que j'utiliserais ce ViewModel dans mon app j'utiliserais un objet d'état
    
    /* @State var fruitArray: [FruitModel] = [
     FruitModel(name: "Apples", count: 5),
     FruitModel(name: "Orange", count: 4)
     ] */
    
    var body: some View {
        NavigationView {
            List {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.removeFruit)
                }
            }
            
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit list")
            .onAppear{
                fruitViewModel.getFruits()
            }
        }
    }
}

/*
struct SecondScreen: View {
    
    @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        HStack {
            ForEach(fruitViewModel.fruitArray) { fruit in
                Text(fruit.name)
                Text("test")
            }
        }
    }
}
*/

struct RandomScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button (action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Go Back")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            })

        }
    }
}




struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
        RandomScreen()
    }
}
