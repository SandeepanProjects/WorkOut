//
//  ViewController.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

//flatten dictioary

let dictionary1 = ["a": ["b": ["c": "1", "d": "1"]],

                       "e" : "1" ,

                       "f" : ["g": ["h": "1"]]] as [String : Any]



let output = flatten(dictionary: dictionary1)



func flatten(dictionary: [String: Any]) -> [String: Any] {

        func flattenRec(output: inout [String: Any], keyPath: String, value: Any, count: inout Int) {

            let nCount =  count

            if value is String {

                output[keyPath] = value

            }

            if let dict = value as? [String: Any] {

                dict.forEach { key, value in

                    count = count + 1

                    flattenRec(output: &output, keyPath: key, value: value, count: &count)

                }

                output[keyPath] =  count - nCount

            }

        }



      var outputDict = [String: Any]()



      dictionary1.forEach { key, value in

        var count = 0

        flattenRec(output: &outputDict, keyPath: key, value: value, count: &count)

      }



      return outputDict

    }
