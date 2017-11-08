//
//  algorithmsController.swift
//  mitchMcEntire_CSP
//
//  Created by Mcentire, Mitchell on 10/26/17.
//  Copyright © 2017 Mcentire, Mitchell. All rights reserved.
//

import UIKit

public class algorithmsController: UIViewController
{
    
    @IBOutlet weak var algorithmText: UILabel!
    private func setupAlgorithm() -> Void
    {
        var algorithmsSteps : [String] = []
        
        let algorithm :String = "These are the instructions to create a project in Java using Eclipse and Github   \n"
        let stepOne :String = "First, Open Eclipse, and choose workspace, and created a new java project. "
        let stepTwo :String = "Second, In the Java Project, create several packages: xxxx.model, xxxx.controller, and xxxx.view."
        let stepThree :String = "Third, In github, created a repository to save it, and change the gitignore files."
        let stepFour :String = "Fourth, In the packages make classes: Xrunner, Xcontroller, PopupDisplay, etc."
        let stepFive :String = "Fifth, In runner, write public static void main method, and link to controller and start app. Then in controller, have a public start method, and start writing code. "
        let stepSix :String = "Sixth, Commit to github every important save and push to origin."
        
        algorithmsSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix]
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmsSteps// we added steps array explaining how to use java.
        {
            let bullet :String = "🐊"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        algorithmText.attributedText = fullAttributedString
    }
    
    private func createParagraphStyle() -> NSParagraphStyle// this helped formatt the bullets of the paragraph.
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent =  35
        
        return paragraphStyle
    }
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setupAlgorithm()
        
        // Do any additional setup after loading the view.
    }
    
    override public func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
