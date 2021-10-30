//
//  Memory address.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation
//Memory address

func address(of pointer: UnsafeRawPointer) -> String {
let length = 2 + 2 * MemoryLayout<UnsafeRawPointer>.size
let address = Int(bitPattern: pointer)
return String(format: "%0\(length)p", address)
}
