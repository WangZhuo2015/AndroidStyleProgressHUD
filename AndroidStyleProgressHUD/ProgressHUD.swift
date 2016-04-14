//
//  ProgressHUD.swift
//  AndroidStyleProgressHUD
//
//  Created by 王卓 on 16/4/13.
//  Copyright © 2016年 SherryTeam. All rights reserved.
//

import UIKit

class ProgressHUD: UIView {
    var radius:CGFloat?
    var clockwise:Bool?
    var lineColor: UIColor?
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        let layer = CAShapeLayer()
        layer.strokeColor = lineColor?.CGColor ?? UIColor.lightGrayColor().CGColor
        layer.fillColor = UIColor.clearColor().CGColor
        addBezierPath(layer)
        pathAnimationRotation(layer)
        pathAnimationStrokeStartAndEnd(layer)
        pathanimationLineWidth(layer)
        self.layer.addSublayer(layer)
    }
    
    private func addBezierPath(layer:CAShapeLayer){
        let path = UIBezierPath(arcCenter: CGPoint(x: 0,y: 0), radius: radius ?? 30, startAngle: 0, endAngle: CGFloat(7/4 * M_PI), clockwise: clockwise ?? true)
        layer.path = path.CGPath
    }
    
    
    private func pathAnimationRotation(layer:CAShapeLayer) {
        let animation = CABasicAnimation(keyPath: "transform.rotation")
        animation.fromValue = 0
        animation.toValue = 2 * M_PI
        animation.duration = 1
        animation.repeatCount = 10000
        layer.addAnimation(animation, forKey: nil)
    }
 
    private func pathAnimationStrokeStartAndEnd(layer:CALayer) {
        let animationStart = CABasicAnimation(keyPath: "strokeStart")
        animationStart.fromValue = 0.5
        animationStart.toValue = 0
        animationStart.duration = 1
        animationStart.autoreverses = true
        animationStart.repeatCount = 10000
        layer.addAnimation(animationStart, forKey: "")
        
        let animationEnd = CABasicAnimation(keyPath: "strokeEnd")
        animationEnd.fromValue = 0.5
        animationEnd.toValue = 1
        animationEnd.duration = 1
        animationEnd.autoreverses = true
        animationEnd.repeatCount = 10000
        layer.addAnimation(animationEnd, forKey: "")
    }
    
    private func pathanimationLineWidth(layer:CALayer) {
        let animation = CABasicAnimation(keyPath: "lineWidth")
        animation.fromValue = 3
        animation.toValue = 6
        animation.duration = 2
        animation.autoreverses = true
        animation.repeatCount = 10000
        layer.addAnimation(animation, forKey: "")
    }

}
