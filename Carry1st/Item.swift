//
//  Item.swift
//  Carry1st
//
//  Created by Michael Ossai on 26/11/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
