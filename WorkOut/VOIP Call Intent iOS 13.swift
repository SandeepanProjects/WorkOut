//
//  VOIP Call Intent iOS 13.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation
//VOIP Call Intent iOS 13

if #available(iOS 13.0, *) {
if let intent = activity.interaction?.intent as? INStartCallIntent,let contacts = intent.contacts,
let value = contacts.first?.personHandle?.value {
let handle = value
// Use the handle for identifying the call recipient.
}
}
