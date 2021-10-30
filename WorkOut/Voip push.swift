//
//  Voip push.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation


Voip push

func pushRegistry(_ registry: PKPushRegistry, didReceiveIncomingPushWith payload: PKPushPayload, for type: PKPushType) {
if type == .voIP {
if let handle = payload.dictionaryPayload["handle"] as? String{
let callUpdate = CXCallUpdate()
callUpdate.remoteHandle = CXHandle(type: .phoneNumber,value: handle)
let callId = UUID()
provider.reportNewIncomingCall(with: uuid, update: callUpdate { _ in
completion()
}
// Set up connection with your services here for call management
establishConnection(for: callId)
}
}
