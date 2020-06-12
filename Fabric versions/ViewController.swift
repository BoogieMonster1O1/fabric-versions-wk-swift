//
//  ViewController.swift
//  Fabric versions
//
//  Copyright © 2020 BoogieMonster1O1. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    let webView = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = Bundle.main.url(forResource: "index", withExtension: "txt") {
            webView.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
        }
    }
    override func loadView() {
        self.view = webView
    }

}

