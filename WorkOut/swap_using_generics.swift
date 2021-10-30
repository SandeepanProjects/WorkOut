//
//  swap_using_generics.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

swap_using_generics

func swap<T:Comparable>(_ a:inout T, _ b :inout T) {
    (a,b) = (b,a)
}
var a = 1
var b = 2
swap(&a,&b)
print(a)
print(b)
