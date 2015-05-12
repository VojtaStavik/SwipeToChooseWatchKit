//
//  NOIC.swift
//  SwipeToChooseWatchKit
//
//  Created by Vojta Stavik on 12/05/15.
//  Copyright (c) 2015 STRV. All rights reserved.
//

import WatchKit
import Foundation


class NOIC: WKInterfaceController {

    override func willActivate() {
        super.willActivate()
        
        NSNotificationCenter.defaultCenter().postNotificationName(ShowMiddleControllerNotificationName, object: nil)
    }
}
