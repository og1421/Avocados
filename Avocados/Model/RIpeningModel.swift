//
//  RIpeningModel.swift
//  Avocados
//
//  Created by Orlando Moraes Martins on 06/03/23.
//

import SwiftUI

//MARK: - Ripening model

struct Ripening: Identifiable {
    let id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
    
}
