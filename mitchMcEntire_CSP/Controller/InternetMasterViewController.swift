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
            "https://www.google.com",
            "https://apcentral.collegeboard.org/courses/ap-computer-science-principles?course=ap-computer-science-principles",
            "https://www.canyonsdistrict.org/",
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
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
                    pageText = """
                            URL - Address of a world wide web page. Uses both DNS and IP

                            DNS- Domain name system which converts alphabetic names into numeric IP addresses.

                            IP - short for internet protocol(Set of rules governing the format of data)

                            TCP- Provides connection between sending and receiving computers, and it has rules to govern delivery of data.

                            Internet- Internet means access to a variety of data from anywhere on the Globe. Internet is used to communicate, inform, produce, and extract data and information for people. Internet connects everyone on the globe together. This is a very useful tool in that communicate is instant. The world uses internet everyday, and it has become a staple in our society. Everyone uses internet.
                    """
                }
                else
                {
                    pageText = internetTopics[indexPath.row]
                }
                
                let controller = segue.destination as! InternetDetailViewController
                
                controller.detailAddress = urlString
                controller.detailText= pageText
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }
}
