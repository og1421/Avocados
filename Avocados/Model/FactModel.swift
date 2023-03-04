//
//  FactModel.swift
//  Avocados
//
//  Created by Orlando Moraes Martins on 03/03/23.
//

import Foundation


struct Fact: Identifiable {
    let id = UUID()
    let image: String
    let content: String
}
