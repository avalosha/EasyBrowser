//
//  ViewController.swift
//  EasyBrowser
//
//  Created by Álvaro Ávalos Hernández on 06/12/19.
//  Copyright © 2019 Álvaro Ávalos Hernández. All rights reserved.
//

import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!
    
    override func loadView(){
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let url = URL(string: "https://www.hackingwithswift.com")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }


}

