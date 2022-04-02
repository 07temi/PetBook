//
//  PetsViewImage.swift
//  PetBook
//
//  Created by Артем Черненко on 20.03.2022.
//

import SwiftUI

struct PetsViewImage: View {
    
    let pet: Pet
    
    var body: some View {
        VStack {
            Image(systemName: pet.photo)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 400)
                .cornerRadius(15)
            Text(pet.name)
            Spacer()
        }
    }
}

struct PetsViewImage_Previews: PreviewProvider {
    static var previews: some View {
        PetsViewImage(pet: Pet.createPets()[0])
    }
}
