//
//  InternetDetailViewController.swift
//  mitchMcEntire_CSP
//
//  Created by Mcentire, Mitchell on 11/29/17.
//  Copyright © 2017 Mcentire, Mitchell. All rights reserved.
//

import UIKit
import WebKit
class InternetDetailViewController: UIViewController
{
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var webView: WKWebView!
    
    
    var detailAddress:String?
    {
        didSet
        {
            configureDetailView()
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        configureDetailView()

        // Do any additional setup after loading the view.
    }
   
    private func configureDetailView() -> Void
    {
        if detailAddress != nil
        {
            if let currentWebView = webView
            {
                let currentURL = URL(string: detailAddress!)
                let currentWebRequest = URLRequest(url: currentURL!)
                currentWebView.load(currentWebRequest)
            }
        }
        else
        {
            if let currentWebView = webView
            {
                let currentURL = URL(string: "https://www.cnn.com")
                currentWebView.load(URLRequest(url:currentURL!))
            }
        }
        
        if detailText != nil
        {
            if let currentText = textView
            {
                currentText.text = detailText
            }
        }
        else
        {
            if let currentText = textView
            {
                currentText.text = "Mitch's CSP app internet screen"
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
