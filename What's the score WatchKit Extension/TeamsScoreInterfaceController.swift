//
//  TeamsScoreInterfaceController.swift
//  What's the score
//
//  Created by VLT Labs on 6/3/15.
//  Copyright (c) 2015 Jay Ang. All rights reserved.
//

import WatchKit
import Foundation


class TeamsScoreInterfaceController: WKInterfaceController {

    @IBOutlet weak var homeHeaderLabel: WKInterfaceLabel!
    @IBOutlet weak var homeTeamScoreLabel: WKInterfaceLabel!
    
    @IBOutlet weak var awayHeaderLabel: WKInterfaceLabel!
    @IBOutlet weak var awayTeamScoreLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        var homeScore = NSUserDefaults.standardUserDefaults().objectForKey("homeTeamScore") as! Int
        
        var awayScore = NSUserDefaults.standardUserDefaults().objectForKey("awayTeamScore")as! Int
        
        
        self.awayTeamScoreLabel.setText("\(awayScore)")
        self.homeTeamScoreLabel.setText("\(homeScore)")
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
