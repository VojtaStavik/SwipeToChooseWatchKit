//
//  IntroIC.swift
//  SwipeToChooseWatchKit
//
//  Created by Vojta Stavik on 12/05/15.
//  Copyright (c) 2015 STRV. All rights reserved.
//

import WatchKit
import Foundation


class IntroIC: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        WKInterfaceController.reloadRootControllersWithNames(["YES", "Middle", "NO"], contexts: nil)
        
        println("inint " + NSDate().description)
    }
}
