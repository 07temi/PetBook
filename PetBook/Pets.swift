//
//  Pets.swift
//  PetBook
//
//  Created by Артем Черненко on 20.03.2022.
//

import Foundation

struct Pet: Identifiable {
    let id = UUID()
    let name: String
    let photo: String
}

extension Pet {
    static func createPets() -> [Pet] {
        var pets:[Pet] = []
        
        pets.append(Pet(name: "James", photo: "camera.on.rectangle"))
        pets.append(Pet(name: "Orpheus", photo: "camera.on.rectangle"))
        
        return pets
    }
}
