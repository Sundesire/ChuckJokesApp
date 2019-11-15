//
//  WebViewController.swift
//  ChuckNorrisJokesApp
//
//  Created by Иван Бабушкин on 10.11.2019.
//  Copyright © 2019 Ivan Babushkin. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKUIDelegate {
    
    
    @IBOutlet weak var progressView: UIProgressView!
    
    var webView: WKWebView!
    
    let url = "http://www.icndb.com/api/"
    
    
    override func loadView() {
        super.loadView()
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.navigationDelegate = self
        webView.uiDelegate = self
        view = webView

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressView.alpha = 0
        
        guard let url = URL(string: url) else { return }
        let request = URLRequest(url: url)
        webView.load(request)
        webView.allowsBackForwardNavigationGestures = true
        
        webView.addObserver(self, forKeyPath: "estimatedProgress", options: .new, context: nil)

    }
    
    
//    override class func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
//        if keyPath == "estimatedProgress" {
//            
//        }
//    }

//    override func observeValue(forKeyPath keyPath: String?,
//                               of object: Any?,
//                               change: [NSKeyValueChangeKey : Any]?,
//                               context: UnsafeMutableRawPointer?) {
//
//        if keyPath == "estimatedProgress" {
//            progressView.progress = Float(webView.estimatedProgress)
//        }
//    }

//    private func showProgressView() {
//        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
//            self.progressView.alpha = 1
//        }, completion: nil)
//    }
//
//    private func hideProgressView() {
//        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
//            self.progressView.alpha = 0
//        }, completion: nil)
//    }

}

extension WebViewController: WKNavigationDelegate {
//
//    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
//        showProgressView()
//    }
//
//    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
//        hideProgressView()
//    }
//
//    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
//        hideProgressView()
//    }
}
