//
//  Storing character map.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation
//Storing character map

var map = [Character:Int]()
for (index,letter) in order.enumerated() {
    map[letter] = index
}
