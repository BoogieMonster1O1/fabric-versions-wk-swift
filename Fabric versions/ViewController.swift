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
        webView.configuration.userContentController.addUserScript(self.getZoomDisableScript())
        if let url = URL(string: "https://boogiemonster1o1.github.io/a.html") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    override func loadView() {
        self.view = webView
    }
    
    private func getZoomDisableScript() -> WKUserScript {
        let source: String = "var meta = document.createElement('meta');" +
            "meta.name = 'viewport';" +
            "meta.content = 'width=device-width, initial-scale=1.0, maximum- scale=1.0, user-scalable=no';" +
            "var head = document.getElementsByTagName('head')[0];" + "head.appendChild(meta);"
        return WKUserScript(source: source, injectionTime: .atDocumentEnd, forMainFrameOnly: true)
    }

}

