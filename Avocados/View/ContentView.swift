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
                
                //MARK: - FOOTER
                VStack(alignment: .center, spacing: 20 ) {
                    Text("All about avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptative"))
                        .padding(8)
                    
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(header: headersData)
    }
}
