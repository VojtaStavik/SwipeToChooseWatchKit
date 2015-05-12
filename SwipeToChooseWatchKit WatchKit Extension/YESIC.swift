//
//  YESIC.swift
//  SwipeToChooseWatchKit
//
//  Created by Vojta Stavik on 12/05/15.
//  Copyright (c) 2015 STRV. All rights reserved.
//

import WatchKit
import Foundation


class YESIC: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // We want to hide YES button when the controller is loaded for the first time
        button.setAlpha(0)
    }

    @IBOutlet weak var button: WKInterfaceButton!
    
    
    override func willActivate() {
        super.willActivate()
        
        NSNotificationCenter.defaultCenter().postNotificationName(ShowMiddleControllerNotificationName, object: nil)
        button.setAlpha(1.0)
    }
}
