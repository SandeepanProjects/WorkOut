//
//  Tower of haoi.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

Tower of haoi



enum Tower : String {

        case Tower1 = "Tower 1"

        case Tower2 = "Tower 2"

        case Tower3 = "Tower 3"

    }



    func tower(numberOfDisks: Int, source x: Tower, dest y: Tower, temp z: Tower) {

        if (numberOfDisks > 0) {

            tower(numberOfDisks: numberOfDisks - 1, source:x, dest:z, temp:y)

            print("Move disk \(numberOfDisks) from \(x.rawValue) to \(y.rawValue)")

            tower(numberOfDisks: numberOfDisks - 1, source:z, dest:y, temp:x)

        }

    }

    



 print("3 disks")

        tower(numberOfDisks:3, source:.Tower1, dest:.Tower3 , temp:.Tower2)



        print("--------")





        print("4 disks")

        tower(numberOfDisks:4, source:.Tower1, dest:.Tower3 , temp:.Tower2)
