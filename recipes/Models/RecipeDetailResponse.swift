//
//  RecipeDetailResponse.swift
//  recipes
//
//  Created by Derian Escalante on 25/12/21.
//

import Foundation

struct RecipeDetailResponse: Decodable {
    let recipe: RecipeDetail
}

struct RecipeDetail: Decodable {
    let imageUrl: String
    let id: String
    let title: String
    let ingredients: [String]
}
