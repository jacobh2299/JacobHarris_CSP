//
//  ProgrammingViewController.swift
//  JacobHarris_CSP
//
//  Created by Harris, Jacob on 10/26/17.
//  Copyright © 2017 Harris, Jacob. All rights reserved.
//

import UIKit
import SpriteKit

class ProgrammingViewController: UIViewController
{

    override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        let gameScene = StartScene(size: view.bounds.size)
        let gameView = viw as! SKView
        
        gameView.showFPS = true
        gameView.showNodeCount = true
        gameView.ignoreSiblingOrder = true
        
        gameScene.scaleModel = .resizeFill
        gameView.presentScene(gameScene)

    }

    
}
