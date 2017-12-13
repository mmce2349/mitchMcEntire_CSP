//
//  globalImpactController.swift
//  mitchMcEntire_CSP
//
//  Created by Mcentire, Mitchell on 10/26/17.
//  Copyright © 2017 Mcentire, Mitchell. All rights reserved.
//

import UIKit

class globalImpactController: UIViewController
{
    @IBOutlet weak var NeedAddressed: UILabel!
    @IBOutlet weak var PersonalConnection: UILabel!
    @IBOutlet weak var sketchImage: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        sketchImage.image = UIImage(named: "AidsDesign" )
        
        var need: String = "Aids is a serious problem that many people deal with around the world. Multipl epeople die from it, and if we celiminate this sisease the world will be better."
        var personal: String = "I know that aids is a very painful disease and I felik we need to put a stop to it. "
        NeedAddressed.text = need
        
        PersonalConnection.text = personal
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
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
