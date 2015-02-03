//
//  ViewController.swift
//  Video Landing Page
//
//  Created by Jian Yao Ang on 2/3/15.
//  Copyright (c) 2015 Jian Yao Ang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        creatingGifFilePath()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func creatingGifFilePath() {
        
        var filePath = NSBundle.mainBundle().pathForResource("elliegoulding", ofType: "gif")
        
        var gif = NSData(contentsOfFile: filePath!)
        
        //creating webview to play gif
        var webView = UIWebView(frame: self.view.frame)
        
        webView.loadData(gif!, MIMEType: "image/gif", textEncodingName: nil, baseURL: nil)
        
        webView.userInteractionEnabled = false
        
        self.view.addSubview(webView)
        
        
        //adding some filter of webview to give some effects
        
        var filter = UIView()
        filter.frame = self.view.frame
        filter.backgroundColor = UIColor.blackColor()
        filter.alpha = 0.05
        self.view.addSubview(filter)
        
        //creating button on web view
        let button = UIButton.buttonWithType(UIButtonType.System) as UIButton
        button.frame = CGRectMake(20, 200, 150, 50)
        button.backgroundColor = UIColor.lightGrayColor()
        button.setTitle("Login", forState: UIControlState.Normal)
        button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        self.view.addSubview(button)
        
    }
}

