//
//  ViewController.swift
//  WebRequest
//
//  Created by Yogesh Kumar on 24/02/16.
//  Copyright © 2016 itsyogesh. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var container: UIView!
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        container.addSubview(webView)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
        let urlStr = "https://developer.apple.com/swift/blog"
        loadRequest(urlStr)
    }
    
    func loadRequest(urlString: String){
        let url = NSURL(string: urlString)!
        let request = NSURLRequest(URL: url)
        webView.loadRequest(request)
    }
    
    @IBAction func loadSwift(sender: AnyObject){
        loadRequest("https://developer.apple.com/swift/blog")
    }
    
    @IBAction func loadGossip(sender: AnyObject){
        loadRequest("https://tmz.com")
    }
    
    @IBAction func loadSteak(sender: AnyObject){
        loadRequest("https://google.com/")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

