//
//  ViewController.swift
//  PrincipleCheatSheet
//
//  Created by Kenji Tanaka on 2018/12/20.
//  Copyright © 2018年 Kenji Tanaka. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}

extension ViewController {
    static func freshController() -> ViewController {
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        let identifier: NSStoryboard.SceneIdentifier = "ViewController"
        guard let viewController = storyboard.instantiateController(withIdentifier: identifier) as? ViewController else {
            fatalError()
        }

        return viewController
    }
}

