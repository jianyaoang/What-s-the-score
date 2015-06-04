//
//  InterfaceController.swift
//  What's the score WatchKit Extension
//
//  Created by VLT Labs on 6/2/15.
//  Copyright (c) 2015 Jay Ang. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var teamColorHeaderLabel: WKInterfaceLabel!
    @IBOutlet weak var substractPointHeaderLabel: WKInterfaceLabel!
    @IBOutlet weak var addPointHeaderLabel: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if NSUserDefaults.standardUserDefaults().objectForKey("homeTeamScore") == nil {
            NSUserDefaults.standardUserDefaults().setObject(0, forKey: "homeTeamScore")
            NSUserDefaults.standardUserDefaults().synchronize()
        }
        
        if NSUserDefaults.standardUserDefaults().objectForKey("awayTeamScore") == nil {
            NSUserDefaults.standardUserDefaults().setObject(0, forKey: "awayTeamScore")
            NSUserDefaults.standardUserDefaults().synchronize()
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func addOnePointButtonPressed() {
        addOrMinusPoint(1, defaultName: "homeTeamScore")
    }
    
    
    @IBAction func addTwoButtonPressed() {
        
        addOrMinusPoint(2, defaultName: "homeTeamScore")
    }
    
    @IBAction func addThreePointsButtonPressed() {
        
        addOrMinusPoint(3, defaultName: "homeTeamScore")
    }
    

    @IBAction func minusOnePointButtonPressed() {
        
        addOrMinusPoint(-1, defaultName: "homeTeamScore")
    }
    
    
    @IBAction func minusTwoPointsButtonPressed() {
        
        addOrMinusPoint(-2, defaultName: "homeTeamScore")
        
    }
    
    @IBAction func minusThreePointsButtonPressed() {
        
        addOrMinusPoint(-3, defaultName: "homeTeamScore")
        
    }

    func addOrMinusPoint(score:Int, defaultName: String) {
        var homeScore = NSUserDefaults.standardUserDefaults().objectForKey(defaultName) as! Int
        homeScore += score
        NSUserDefaults.standardUserDefaults().setObject(homeScore, forKey: defaultName)
        NSUserDefaults.standardUserDefaults().synchronize()
        
    }
    
    @IBAction func onBlueButtonPressed() {
        stylingHomeTeam(UIColor.blueColor())
    }
    
    
    @IBAction func onRedButtonPressed() {
        
        stylingHomeTeam(UIColor.redColor())
    }
    
    
    func stylingHomeTeam(homeTeamColor: UIColor) {
        self.teamColorHeaderLabel.setTextColor(homeTeamColor)
        self.substractPointHeaderLabel.setTextColor(homeTeamColor)
        self.addPointHeaderLabel.setTextColor(homeTeamColor)

        
        
    }
    
}
