//
//  Map operator using iterator protocol.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

//Swift implementation of Map operator using iterator protocol

extension Sequence {
    func newMap<B>(_ transform:(Iterator.Element) throws -> B) rethrows -> [B]{
        var iterator = makeIterator()
        var output = [B]()
        while let element = iterator.next() {
            output.append(try transform(element))
        }
        return output
    }
}
