//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Orlando Moraes Martins on 28/02/23.
//

import SwiftUI

struct RipeningStagesView: View {
    //MARK: - Properties
    var ripeningStages: [Ripening] = ripeningData
    
    //MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack{
                Spacer()
                
                HStack (alignment: .center, spacing: 25){
                    ForEach(ripeningStages) { stage in
                        RipeningView(ripening: stage)
                    }
                }//:HSTACK
                .padding(.vertical)
                .padding(.horizontal, 25)
                
                Spacer()
            }//:VSTACK
        }//:SCROLL
        .edgesIgnoringSafeArea(.all)
    }
}

//MARK: - Preview
struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
