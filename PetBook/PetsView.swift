//
//  PetsView.swift
//  PetBook
//
//  Created by Артем Черненко on 20.03.2022.
//

import SwiftUI

struct PetsView: View {
    
    let pets = Pet.createPets()
    
    var body: some View {
        TabView {
            ForEach(pets) { value in
                PetsViewImage(pet: value)
            }
            VStack {
            Image(systemName: "plus.rectangle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 400)
                    .onTapGesture {
                        print("add action")
                    }
            Text("add")
                Spacer()
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}


struct PetsView_Previews: PreviewProvider {
    static var previews: some View {
        PetsView()
    }
}
