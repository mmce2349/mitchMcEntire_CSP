//
//  InternetDetailViewController.swift
//  mitchMcEntire_CSP
//
//  Created by Mcentire, Mitchell on 11/29/17.
//  Copyright © 2017 Mcentire, Mitchell. All rights reserved.
//

import UIKit
import Webkit
class InternetDetailViewController: UIViewController
{
    @IBOutlet weak var textView: UILabel!
    
    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
