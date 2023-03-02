//
//  ContentView.swift
//  Avocados
//
//  Created by Orlando Moraes Martins on 27/02/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    
    var header: [Header] = headersData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20 ) {
                //MARK: - HEADER
                ScrollView(.horizontal, showsIndicators: false){
                    HStack (alignment: .top, spacing: 0) {
                        ForEach(header) { item in
                            HeaderView(header: item)
                        }
                    }//:HSTACK
                }//: SCROLL
                
                //MARK: - Dishes
                Text("Avocados dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                DishesViews()
                    .frame(maxWidth: 640)
                
                //MARK: - FOOTER
                VStack(alignment: .center, spacing: 20 ) {
                    Text("All about avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                                            
                    Text("Everything you want to know about avocados but were to afraid to ask")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                    
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
                
                
            }//:VSTACK
        }//:SCROLL
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptative"))
            .padding(8)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(header: headersData)
    }
}
