//
//  CenterViewController.swift
//  SlideMenuInSwift
//
//  Created by SivajeeBattina on 3/5/15.
//  Copyright (c) 2015 Paradigmcreatives. All rights reserved.
//

import UIKit

@objc
protocol CenterViewControllerDelegate {
    optional func toggleLeftPanel()
    optional func toggleRightPanel()
    optional func collapseSidePanels()
}

class CenterViewController: UIViewController {

    var delegate: CenterViewControllerDelegate?
    
    @IBAction func leftMenuTapped(sender: AnyObject){
       delegate?.toggleLeftPanel?()
    }
    
    @IBAction func rightMenuTapped(sender: AnyObject){
        delegate?.toggleRightPanel?()
    }

}
