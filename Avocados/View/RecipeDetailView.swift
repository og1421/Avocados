//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Orlando Moraes Martins on 04/03/23.
//

import SwiftUI

struct RecipeDetailView: View {
    //MARK: - Properties
    var recipe: Recipe
    @State private var pulsate: Bool = false
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group{
                    // TITLE
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptative"))
                        .padding(.top, 10)
                    
                    //RATING
                    RecipeRatingView(recipe: recipe)
                    
                    //COOKING
                    RecipeCookingView(recipe: recipe)
                    
                    //INGREDIENTS
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id:\.self){ item in
                            VStack(alignment: .leading, spacing: 5) {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                
                                Divider()
                            }//: VSTACK
                        }//: LOOP
                    }//:VSTACK
                    
                    //INSTRUCTIONS
                    Text("Instructions")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    ForEach(recipe.instructions, id: \.self) { item in
                        VStack(alignment: .leading, spacing: 5 ) {
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundColor(Color("ColorGreenAdaptative"))
                            
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(maxHeight:100)
                        }//:VSTACK
                    }//:LOOP
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                
            }//:VSTACK
        }//:SCroll
        .edgesIgnoringSafeArea(.all)
        .overlay(
            HStack {
                Spacer()
                VStack { 
                    Button{
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                       Image(systemName: "chevron.down.circle.fill")
                            .font(Font.title)
                            .foregroundColor(.white)
                            .shadow(radius: 4)
                            .opacity(self.pulsate ? 1 : 0.6)
                            .scaleEffect(self.pulsate ? 1.2 : 0.8, anchor: .center)
                            .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                        
                    }//:Button
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    Spacer()
                    
                }//:VSTACK
            }//:HSTACK
        )
        .onAppear() {
            self.pulsate.toggle()
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
