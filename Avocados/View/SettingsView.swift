//
//  SettingsView.swift
//  Avocados
//
//  Created by Orlando Moraes Martins on 28/02/23.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - Properties
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            //MARK: - Header
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptative"))
            }//:VSTACK
            .padding()
            
            Form{
                //MARK: - Section n1
                Section(header: Text("General Setings")) {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notification")
                    }//:TOGGLE
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background refresh")
                    }//:TOGGLE
                }//:Section
                
                //MARK: - Section n2
                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack {
                            Text("Product")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Avocados Recipe")
                        }//:HSTACK
                        
                        HStack {
                            Text("Compatibility")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }//:HSTACK
                        
                        HStack {
                            Text("Developer")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Orlando Gabriel")
                        }//:HSTACK
                        
                        HStack {
                            Text("Designer")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Robert Petras")
                        }//:HSTACK
                        
                        HStack {
                            Text("Version")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }//:HSTACK
                    } else {
                        HStack {
                            Text("Personal Message")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Happing Code")
                        }//:HSTACK
                    }//:Conditional
                    
                    
                    
                }//:Section
            }
        }//:VSTACK
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
