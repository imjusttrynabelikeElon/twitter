//
//  PrivacyAgreementView.swift
//  twitter
//
//  Created by Karon Bell on 5/2/23.
//

import Foundation
import UIKit
import WebKit





class PrivacyAgrrementView: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create a WKWebView instance
        webView = WKWebView(frame: view.bounds)
        webView.navigationDelegate = self
        view.addSubview(webView)

        // Load the URL
        if let url = URL(string: "https://cdn.cms-twdigitalassets.com/content/dam/legal-twitter/site-assets/privacy-june-10-2022/Twitter_Privacy_Policy_EN.pdf") {
            webView.load(URLRequest(url: url))
            webView.allowsBackForwardNavigationGestures = true
        }
    }

    // WKNavigationDelegate method to handle the loading of web pages
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
}
