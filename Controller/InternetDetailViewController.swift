//
//  InternetViewController.swift
//  JacobHarris_CSP
//
//  Created by Harris, Jacob on 10/26/17.
//  Copyright © 2017 Harris, Jacob. All rights reserved.
//

import UIKit
import WebKit

class InternetDetailViewController: UIViewController
{

    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var webViewer: WKWebView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() -> Void
    {
        
    }

}
