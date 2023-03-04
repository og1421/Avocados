//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Orlando Moraes Martins on 04/03/23.
//

import SwiftUI

struct RecipeCardView: View {
    //MARK: - Properties
    var recipe: Recipe
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(.white)
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                                .padding(.trailing)
                                .padding(.top, 22)
                            
                            Spacer()
                        }//:VSTACK
                    }//: HSTACK
                )
            
            VStack(alignment: .leading, spacing: 12) {
                // TITLE
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                //HEADLINE
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                //RATES
                HStack(alignment: .center, spacing: 5) {
                    ForEach(1...(recipe.rating), id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .font(.body)
                        .foregroundColor(.yellow)
                    }
                }//:HSTACK
                
                //COOKING
                
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
                
            }//: Vstack
            .padding()
            .padding(.bottom, 12)
        }//:VSTACK
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
