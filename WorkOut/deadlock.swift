//
//  deadlock.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

import Foundation

//deadlock
dispatch_queue_t queue = dispatch_queue_create("my.label", DISPATCH_QUEUE_SERIAL);
dispatch_async(queue, ^{
    dispatch_sync(queue, ^{
        // outer block is waiting for this inner block to complete,
        // inner block won't start before outer block finishes
        // => deadlock
    });

    // this will never be reached
});
