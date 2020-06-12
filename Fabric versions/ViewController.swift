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
        if let url = URL(string: "https://boogiemonster1o1.github.io/a.html") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    override func loadView() {
        self.view = webView
    }

}

