//
//  ProgrammingViewController.swift
//  JacobHarris_CSP
//
//  Created by Harris, Jacob on 10/26/17.
//  Copyright © 2017 Harris, Jacob. All rights reserved.
//

import UIKit
import SpriteKit

public class ProgrammingViewController: UIViewController
{

    override public func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        let gameScene = StartScene(size: view.bounds.size)
        let gameView = view as! SKView
        
        gameView.showsFPS = true
        gameView.showsNodeCount = true
        gameView.ignoresSiblingOrder = true
        
        gameScene.scaleMode = .resizeFill
        gameView.presentScene(gameScene)

    }

    
}
