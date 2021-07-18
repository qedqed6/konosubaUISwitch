//
//  CharacterTVC.swift
//  konosubaUISwitch
//
//  Created by peter on 2021/7/18.
//

import UIKit

class CharacterTVC: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("CharacterTVC viewDidLoad()")
    }

    @IBAction func kazumaSwitchValueChanged(_ sender: UISwitch) {
        NotificationCenter.default.post(name: ViewController.notificationName, object: nil, userInfo: ["kazuma" : sender.isOn])
    }
    
    @IBAction func aquaSwitchValueChanged(_ sender: UISwitch) {
        NotificationCenter.default.post(name: ViewController.notificationName, object: nil, userInfo: ["aqua" : sender.isOn])
    }
    
    @IBAction func meguminSwitchValueChanged(_ sender: UISwitch) {
        NotificationCenter.default.post(name: ViewController.notificationName, object: nil, userInfo: ["megumin" : sender.isOn])
    }
    
    @IBAction func darknessSwitchValueChanged(_ sender: UISwitch) {
        NotificationCenter.default.post(name: ViewController.notificationName, object: nil, userInfo: ["darkness" : sender.isOn])
    }
    
    @IBAction func wizSwitchValueChanged(_ sender: UISwitch) {
        NotificationCenter.default.post(name: ViewController.notificationName, object: nil, userInfo: ["wiz" : sender.isOn])
    }
    
    @IBAction func youyouSwitchValueChanged(_ sender: UISwitch) {
        NotificationCenter.default.post(name: ViewController.notificationName, object: nil, userInfo: ["youyou" : sender.isOn])
    }
    
    @IBAction func arueSwitchValueChanged(_ sender: UISwitch) {
        NotificationCenter.default.post(name: ViewController.notificationName, object: nil, userInfo: ["arue" : sender.isOn])
    }
}
