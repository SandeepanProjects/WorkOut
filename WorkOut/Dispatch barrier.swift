//
//  Dispatch barrier.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation


Dispatch barrier

identify the critical section and make it accessible by only one thread at a time

var balance = 1200
let concurrentQueue = DispatchQueue(label: "Concurrent Queue", attributes: .concurrent)
struct ATM {
    let tag: String
    func withdraw(value: Int) {
        concurrentQueue.async(flags: .barrier) {
            print("\(self.tag): checking if balance containing sufficent money")
            if balance > value {
                print("\(self.tag): Balance is sufficent, please wait while processing withdrawal")
                // sleeping for some random time, simulating a long process
                Thread.sleep(forTimeInterval: Double.random(in: 0...2))
                balance -= value
                print("\(self.tag): Done: \(value) has been withdrawed")
                print("\(self.tag): current balance is \(balance)")
            } else {
                print("\(self.tag): Can't withdraw: insufficent balance")
            }
        }
    }
}
