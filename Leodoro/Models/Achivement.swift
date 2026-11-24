//
//  Achivement.swift
//  Leodoro
//
//  Created by Warlischek Julian on 13.10.26.
//

import Foundation

struct Achievement: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var description: String
    var points: String
    var imageName: String
}
