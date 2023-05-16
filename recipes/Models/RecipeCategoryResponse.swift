//
//  RecipeCategoryResponse.swift
//  recipes
//
//  Created by Derian Escalante on 12/12/21.
//

import Foundation

struct RecipeCategoryResponse: Decodable {
    let categories: [RecipeCategory]
}

struct RecipeCategory: Decodable {
    let imageUrl: String
    let title: String
}
