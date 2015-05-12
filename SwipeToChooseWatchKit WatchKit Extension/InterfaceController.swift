//
//  InterfaceController.swift
//  SwipeToChooseWatchKit WatchKit Extension
//
//  Created by Vojta Stavik on 12/05/15.
//  Copyright (c) 2015 STRV. All rights reserved.
//

import WatchKit
import Foundation


let ShowMiddleControllerNotificationName = "ShowMiddleControllerNotificationName"

class InterfaceController: WKInterfaceController {

    @IBOutlet weak var imageInterface: WKInterfaceImage!
    @IBOutlet weak var labelInterface: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        NSNotificationCenter.defaultCenter().addObserverForName(ShowMiddleControllerNotificationName, object: nil, queue: NSOperationQueue.mainQueue()) { ( _ ) -> Void in

            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                if let beatle = game.next() {
                    
                    self.labelInterface.setText(beatle.name)
                    self.imageInterface.setImage(beatle.image)
                }
            })
            
            self.becomeCurrentPage()
        }
    }
}
