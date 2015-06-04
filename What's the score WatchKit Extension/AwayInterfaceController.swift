//
//  AwayInterfaceController.swift
//  What's the score
//
//  Created by VLT Labs on 6/3/15.
//  Copyright (c) 2015 Jay Ang. All rights reserved.
//

import WatchKit
import Foundation


class AwayInterfaceController: WKInterfaceController {

    @IBOutlet weak var teamColorHeaderLabel: WKInterfaceLabel!
    @IBOutlet weak var substractPointHeaderLabel: WKInterfaceLabel!
    @IBOutlet weak var addPointHeaderLabel: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
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
        addOrMinusPoint(1, defaultName: "awayTeamScore")
    }
    
    @IBAction func addTwoPointsButtonPressed() {
        
        addOrMinusPoint(2, defaultName: "awayTeamScore")
    }

    @IBAction func addThreePointsButtonPressed() {
        
        addOrMinusPoint(3, defaultName: "awayTeamScore")
    }

    @IBAction func minusOnePointButtonPressed() {
        
        addOrMinusPoint(-1, defaultName: "awayTeamScore")
    }
    
    @IBAction func minusTwoPointsButtonPressed() {
        
        addOrMinusPoint(-2, defaultName: "awayTeamScore")
    }

    @IBAction func minusThreePointsButtonPressed() {
        
        addOrMinusPoint(-3, defaultName: "awayTeamScore")
    }

    
    func addOrMinusPoint(score:Int, defaultName: String) {
        var homeScore = NSUserDefaults.standardUserDefaults().objectForKey(defaultName) as! Int
        homeScore += score
        NSUserDefaults.standardUserDefaults().setObject(homeScore, forKey: defaultName)
        NSUserDefaults.standardUserDefaults().synchronize()
        
    }
    
    
    @IBAction func onBlueColorButtonPressed() {
        
        stylingAwayTeam(UIColor.blueColor())
    }
    
    @IBAction func onRedColorButtonPressed() {
        
        stylingAwayTeam(UIColor.redColor())
    }
    
    func stylingAwayTeam(homeTeamColor: UIColor) {
        self.teamColorHeaderLabel.setTextColor(homeTeamColor)
            self.substractPointHeaderLabel.setTextColor(homeTeamColor)
            self.addPointHeaderLabel.setTextColor(homeTeamColor)
        
    }
    
    
}
