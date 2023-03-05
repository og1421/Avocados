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
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModel = false
    
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
                RecipeRatingView(recipe: recipe)
                
                //COOKING
                RecipeCookingView(recipe: recipe)
                
            }//: Vstack
            .padding()
            .padding(.bottom, 12)
        }//:VSTACK
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModel.toggle()
        }
        .sheet(isPresented: self.$showModel) {
            RecipeDetailView(recipe: self.recipe)
        }
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
