//
//  Find Max Length.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation


Find Max Length

var maxLength = 0
for i in 0..<input.count {
if input[i] == "(" {
// push index on the stack
}
else{
// pop
// Update max length ( maxLength found till now , current valid substring length , ie current index - stack.top)
maxLength = max(maxLength, i - stack.top())
}
}
