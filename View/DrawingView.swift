//
//  DrawingViewController.swift
//  JacobHarris_CSP
//
//  Created by Harris, Jacob on 12/5/17.
//  Copyright © 2017 Harris, Jacob. All rights reserved.
//

import UIKit

public class DrawingView: UIView
{

    override public func draw(_ rect: CGRect)
    {
        //Drawing code
        drawStickFigure().stroke()
        drawTurtle()
        drawHappyTree()
        
    }
    private func drawStickFigure() -> UIBezierPath
    {
        let stickFigure = UIBezierPath()
        
        UIColor.magenta.setStroke()
        stickFigure.lineWidth = 3.0
        
        stickFigure.addArc(withCenter: CGPoint(x: 200, y: 200),
                           radius: CGFloat(20),
                           startAngle: CGFloat(0),
                           endAngle: CGFloat(2) * CGFloat.pi,
                           clockwise: true)
        stickFigure.move(to: CGPoint(x: 200, y:220))
        stickFigure.addLine(to: CGPoint(x: 200, y: 270))
        stickFigure.move(to: CGPoint(x: 180, y:240))
        stickFigure.addLine(to: CGPoint(x: 220, y: 240))
        stickFigure.move(to: CGPoint(x: 200, y:270))
        stickFigure.addLine(to: CGPoint(x: 180, y: 300))
        stickFigure.move(to: CGPoint(x: 200, y:270))
        stickFigure.addLine(to: CGPoint(x: 220, y: 300))

        return stickFigure
        
    }
    
    public func drawHappyTree() -> Void
    {
        let bobRoss = UIBezierPath()
        
        bobRoss.move(to:  CGPoint(x:80, y:50))
        bobRoss.addLine(to: CGPoint(x:120, y:150))
        bobRoss.addLine(to: CGPoint(x:40, y:150))
        bobRoss.close()
        UIColor(patternImage: UIImage(named: "tree")!).setFill()
        UIColor.brown.setStroke()
        bobRoss.lineWidth = 2.0
        bobRoss.fill()
        bobRoss.stroke()
        
        let happyTree = UIBezierPath()
        
        UIColor.green.setFill()
        happyTree.move(to: CGPoint(x:110, y:150))
        happyTree.addLine(to: CGPoint(x:150, y:200))
        happyTree.addLine(to: CGPoint(x:10, y:200))
        happyTree.addLine(to: CGPoint(x:50, y:150))
        happyTree.close()
        happyTree.stroke()
        happyTree.fill()
        happyTree.move(to: CGPoint(x:80, y:200))
        happyTree.addLine(to: CGPoint(x:80, y:250))
        happyTree.lineWidth = 6.0
        happyTree.stroke()
        
        
        
    }
    
    
    private func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint(x:50, y:250))
        logo.addLine(to: CGPoint(x:100, y:300))
        logo.addLine(to: CGPoint(x:50, y:350))
        logo.close()
        logo.fill()

    }
    
    
    
    
    
    
   
}
