//
//  AppDelegate.swift
//  PrincipleCheatSheet
//
//  Created by Kenji Tanaka on 2018/12/20.
//  Copyright © 2018年 Kenji Tanaka. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    private let menuBarItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.squareLength)
    private let popover = NSPopover()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        if let button = menuBarItem.button {
            button.image = NSImage(named: NSImage.Name("MenuBarIcon"))
            button.action = #selector(togglePopover(_:))
        }

        popover.contentViewController = ViewController.freshController()
    }
}

extension AppDelegate {
    @objc func togglePopover(_ sender: Any) {
        if popover.isShown {
            closePopover(sender)
        } else {
            showPopover(sender)
        }
    }

    private func closePopover(_ sender: Any) {
        popover.performClose(sender)
    }

    private func showPopover(_ sender: Any) {
        guard let button = menuBarItem.button else { return }
        popover.show(relativeTo: button.bounds, of: button, preferredEdge: NSRectEdge.minY)
    }
}
