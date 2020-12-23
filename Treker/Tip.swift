//
//  Tip.swift
//  Treker
//
//  Created by knight on 12/22/20.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
