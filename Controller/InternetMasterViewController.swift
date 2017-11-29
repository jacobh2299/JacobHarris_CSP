//
//  InternetMasterViewController.swift
//  JacobHarris_CSP
//
//  Created by Harris, Jacob on 11/29/17.
//  Copyright © 2017 Harris, Jacob. All rights reserved.
//

import UIKit

class InternetMasterViewController: UITableViewController
{
    private (set) lazy var internetTopics : [String] =
    {
        return[
        "Definitions",
        "CSP",
        "CTEC",
        "Canyons",
        "Twitter",
        "Swift Guide",
        ]
    }()
    
    private var detailViewController : InternetDetailViewController?
    
    private func setup() -> Void
    {
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setup();
        self.clearsSelectionOnViewWillAppear = false
    }

    override public func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return internetTopics.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIndentifier", for: indexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
        return cell
    }
    
}
