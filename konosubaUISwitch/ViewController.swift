//
//  ViewController.swift
//  konosubaUISwitch
//
//  Created by peter on 2021/7/18.
//

import UIKit

class ViewController: UIViewController {
    static let notificationName = Notification.Name("displayNotification")
    
    @IBOutlet weak var kazumaImageView: UIImageView!
    @IBOutlet weak var aquaImageView: UIImageView!
    @IBOutlet weak var meguminImageView: UIImageView!
    @IBOutlet weak var darknessImageView: UIImageView!
    @IBOutlet weak var wizImageView: UIImageView!
    @IBOutlet weak var youyouImageView: UIImageView!
    @IBOutlet weak var arueImageView: UIImageView!
    @IBOutlet weak var toatlImageView: UIImageView!
    
    var imageViews: [UIImageView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.display), name: ViewController.notificationName, object: nil)
        print("ViewController viewDidLoad()")
        
        imageViews.append(kazumaImageView!)
        imageViews.append(aquaImageView!)
        imageViews.append(meguminImageView!)
        imageViews.append(darknessImageView!)
        imageViews.append(wizImageView!)
        imageViews.append(youyouImageView!)
        imageViews.append(arueImageView!)
    }

    @objc func display(notification: Notification) {
        guard let info = notification.userInfo else {
            return
        }
        if let enabled = info["kazuma"] {
            kazumaImageView.isHidden = !(enabled as! Bool)
        }
        if let enabled = info["aqua"] {
            aquaImageView.isHidden = !(enabled as! Bool)
        }
        if let enabled = info["megumin"] {
            meguminImageView.isHidden = !(enabled as! Bool)
        }
        if let enabled = info["darkness"] {
            darknessImageView.isHidden = !(enabled as! Bool)
        }
        if let enabled = info["wiz"] {
            wizImageView.isHidden = !(enabled as! Bool)
        }
        if let enabled = info["youyou"] {
            youyouImageView.isHidden = !(enabled as! Bool)
        }
        if let enabled = info["arue"] {
            arueImageView.isHidden = !(enabled as! Bool)
        }
        
        var count = 0
        for image in imageViews {
            if !image.isHidden {
                count += 1
            }
        }
        
        if count == imageViews.count {
            toatlImageView.isHidden = false
        } else {
            toatlImageView.isHidden = true
        }
    }
}

