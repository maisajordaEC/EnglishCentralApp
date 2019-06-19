//
//  ViewController.swift
//  EnglishCentralApp
//
//  Created by Mailyn Sajorda on 18/06/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import UIKit
import ECCoreKit
import ECMonitoringKit
import ECPlayerKit

class ViewController: UIViewController {
    let user: ECUser = ECUser.init(accountId: 12345, username: "MaiSajorda", email: "mailyn.sajorda@englishcentral.com")
    var session: ECSession?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let monitor:ECMonitoringProtocol = ECNewRelic.init()
        monitor.recordMetricWithScreen(screen: "Initial Screen")
        monitor.recordCustomEvent(type: "View Controller", attributes: ["EC":"POC"])
        
        session = ECSession.init(user: user)
        session?.monitor = monitor
    }
    
    @IBAction func showVDS(_ sender: Any) {
        let player:ECPlayerProtocol = ECPlayer.init(session: (self.session ?? nil)!)
        player.showVideoDetailScreen(viewController: self.navigationController!)
        player.shareDialog()
    }
}

