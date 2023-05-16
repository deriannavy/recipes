//
//  RecipeListView.swift
//  recipes
//
//  Created by Derian Escalante on 25/12/21.
//

import SwiftUI

struct RecipeListView: View {
    
    let recipes: [RecipeViewModel]
    
    var body: some View {
        List(recipes, id: \.id){ recipe in
            NavigationLink(destination: RecipeDetailScreen(recipeId: recipe.id).navigationTitle(recipe.title)){
                RecipeCellView(recipe: recipe)
            }
        }
    }
}
