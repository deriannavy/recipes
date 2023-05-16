//
//  Constants.swift
//  recipes
//
//  Created by Derian Escalante on 12/12/21.
//

import Foundation

struct Constants {
    
    struct Urls {
        static let recipeCategoriesUrl = URL(string: "https://recipesapi.herokuapp.com/api/v2/categories")!
        
        static func recipeByCategoryName(_ name: String) -> URL {
            return URL(string: "https://recipesapi.herokuapp.com/api/v2/recipes?q=\(name)&page=1")!
        }
        
        static func recipeById(_ name: String) -> URL {
            return URL(string: "https://recipesapi.herokuapp.com/api/v2/recipes/\(name)")!
        }
    }
}
