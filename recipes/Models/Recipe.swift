//
//  Recipe.swift
//  recipes
//
//  Created by Derian Escalante on 25/12/21.
//

import Foundation

struct RecipeResponse: Decodable {
    let recipes: [Recipe]
}

struct Recipe: Decodable {
    let id: String
    let imageUrl: String
    let title: String
}
