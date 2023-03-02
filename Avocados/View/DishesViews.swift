//
//  DishesViews.swift
//  Avocados
//
//  Created by Orlando Moraes Martins on 02/03/23.
//

import SwiftUI

struct DishesViews: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 4){
            VStack (alignment: .leading, spacing: 4){
                //1st Column
                HStack{
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    
                    Spacer()
                    
                    Text("Toasts")
                }//: HSTACK
                
                Divider()
                
                HStack{
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifier())
                    
                    Spacer()
                    
                    Text("Tacos")
                }//: HSTACK
                
                Divider()
                
                HStack{
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModifier())
                    
                    Spacer()
                    
                    Text("Salads")
                }//: HSTACK
                
                Divider()
                
                HStack{
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifier())
                    
                    Spacer()
                    
                    Text("Spreads")
                }//: HSTACK
            }//:VStack
            
            VStack(alignment: .center, spacing: 16 ) {
                HStack {
                    Divider()
                }
                
                Image(systemName: "heart.circle")
                    .font(.title.weight(.ultraLight))
                
                HStack {
                    Divider()
                }
            }
            
            //MARK: - 3th column
            VStack(alignment: .trailing, spacing: 4) {
                HStack{
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                    
                }//:HStack
                
                Divider()
                
                HStack{
                    Text("Sandwiches")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModifier())
                    
                }//:HStack
                
                Divider()
                
                HStack{
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModifier())
                    
                }//:HStack
                
                Divider()
                
                HStack{
                    Text("Smoothie")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModifier())
                    
                }//:HStack
                
            }//:Vstack
        }//: HSTack
        .font(.system(.callout, design: .serif))
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

struct DishesViews_Previews: PreviewProvider {
    static var previews: some View {
        DishesViews()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}
