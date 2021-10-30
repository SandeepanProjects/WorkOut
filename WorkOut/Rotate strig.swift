//
//  Rotate strig.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

//Rotate strig



func isRotation(s1: String, s2: String) -> Bool {

    

    if s1.count != s2.count {

        return false

    }

    

    let s3 = s1 + s1

    return s3.contains(s2)

}



isRotation(s1: "erbottlewat", s2: "waterbottle")

isRotation(s1: "water", s2: "waterbottle")

isRotation(s1: "erbottleaaa", s2: "waterbottle")

isRotation(s1: "ewaterbottl", s2: "waterbottle")
