//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Orlando Moraes Martins on 04/03/23.
//

import SwiftUI

struct RecipeCookingView: View {
    //MARK: - Properties
    var recipe: Recipe
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 12){
            HStack(alignment: .center, spacing: 2){
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }//:HSTACK
            
            HStack(alignment: .center, spacing: 2){
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            }//:HSTACK
            
            HStack(alignment: .center, spacing: 2){
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }//:HSTACK
            
        }//:HSTACK
        .font(.footnote)
        .foregroundColor(.gray)
    }
}

struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
