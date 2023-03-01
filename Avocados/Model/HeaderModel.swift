//
//  HeaderModel.swift
//  Avocados
//
//  Created by Orlando Moraes Martins on 01/03/23.
//

import SwiftUI

//MARK: - Header Model

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}

