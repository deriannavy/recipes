//
//  RecipeCategoryListView.swift
//  recipes
//
//  Created by Derian Escalante on 12/12/21.
//

import SwiftUI

struct RecipeCategoryListView: View {
    
    let categories: [RecipeCategoryViewModel]
        
    var body: some View {
        List(categories) { category in
            NavigationLink(destination: RecipeListScreen(recipeCategory: category).navigationTitle(category.title)) {
                RecipeCategoryCellView(recipeCategory: category)
            }
        }.listStyle(.plain)
    }
}
