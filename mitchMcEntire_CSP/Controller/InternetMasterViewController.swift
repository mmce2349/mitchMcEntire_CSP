//
//  InternetMasterViewController.swift
//  mitchMcEntire_CSP
//
//  Created by Mcentire, Mitchell on 11/29/17.
//  Copyright © 2017 Mcentire, Mitchell. All rights reserved.
//

import UIKit

class InternetMasterViewController: UITableViewController
{

    private (set) lazy var internetTopics : [String] =
    {
        return [
            "Definitions",
            "CSP",
            "CTEC",
            "Canyons",
            "Twitter",
            "Start Guide",
            ]
    }()
    private lazy var addresses : [String] = []
    private var detailViewController : InternetDetailViewController?
    
    private func setup() -> Void
    {//TODO: replace with correct links
        addresses = [
            "http://www.google.com",
            "https://apcentral.collegeboard.org/courses/ap-computer-science-principles?course=ap-computer-science-principles",
            "http://www.canyonsdistrict.org/",
            "https://ctec.canyonsdistrict.org/",
            "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/index.html",
            "https://twitter.com/?lang=en"
        ]
        
        if let splitView = splitViewController
        {
            let currentControllers = splitView.viewControllers
            detailViewController = currentControllers[0] as? InternetDetailViewController
        }
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
        self.clearsSelectionOnViewWillAppear = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Table view data source
    
    override public func numberOfSections(in tableView: UITableView) -> Int
    {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return internetTopics.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueResuableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel.text = currentText
        
        return cell
    }
    
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier! == "showDetail"
        {
            if let indexPath = self.tableView.indexPathForSelectedRow
            {
                let urlString = addresses[indexPath.row]
                let pageText : String
                
                if indexPath.row == 0
                {// replace with definitions. Great time to use """
                    pageText = "All the definitios you wrote....."
                }
                else
                {
                    pageText = internetTopics[indexPath.row]
                }
                
                let controller = segue.destination as! InternetDetailViewController
                
                controller.detailAddress = urlString
                controller.detailText = pageText
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSuppplementBackButton = true
            }
        }
    }
}
