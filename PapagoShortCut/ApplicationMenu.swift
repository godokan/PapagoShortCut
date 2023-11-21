//
//  ApplicationMenu.swift
//  PapagoShortCut
//
//  Created by 구자민 on 2023/11/22.
//

import Foundation
import SwiftUI

class ApplicationMenu: NSObject {
    let menu = NSMenu()
    let url: String = "https://translate.google.co.kr/"
    
    func createMenu() -> NSMenu {
        let webView = WebView(url: URL(string: url)!)
        let topView = NSHostingController(rootView: webView)
        topView.view.frame.size = CGSize(width: 500, height: 500)
        
        let customMenuItem = NSMenuItem()
        customMenuItem.view = topView.view
        menu.addItem(customMenuItem)
        menu.addItem(NSMenuItem.separator())
        
        let aboutMenuItem = NSMenuItem(title: "About Papago Shortcuts", action: #selector(about), keyEquivalent: "")
        
        aboutMenuItem.target = self
        menu.addItem(aboutMenuItem)
        
        let quitMenuItem = NSMenuItem(title: "Quit", action: #selector(quit), keyEquivalent: "q")
        quitMenuItem.target = self
        menu.addItem(quitMenuItem)
        
        return menu
    }
    
    @objc func about(sender: NSMenuItem) {
        NSApp.orderFrontStandardAboutPanel()
    }
    
    @objc func quit(sender: NSMenuItem) {
        NSApp.terminate(self)
    }
}
