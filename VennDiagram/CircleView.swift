//
//  CircleView.swift
//  VennDiagram
//
//  Created by James Wilson on 12/16/15.
//  Copyright © 2015 Pluralsight. All rights reserved.
//

import UIKit

@IBDesignable
public class CircleView: UIView {
    
    @IBInspectable
    public var fillColor: UIColor {
        didSet {
            self.layoutSubviews()
            self.layoutIfNeeded()
        }
    }
    
    public override init(frame: CGRect) {
        self.fillColor = UIColor.lightText
        
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
    }
    
    public required init?(coder aDecoder: NSCoder) {
        self.fillColor = UIColor.lightText
        
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.clear
    }
    
    
    public var shapeLayer: CAShapeLayer {
        get {
            return self.layer as! CAShapeLayer
        }
    }
    
    public override class var layerClass: AnyClass {
        get {
            return CAShapeLayer.self
        }
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        let bezierPath = UIBezierPath(ovalIn: self.bounds)

        self.shapeLayer.fillColor = self.fillColor.cgColor
        self.shapeLayer.path = bezierPath.cgPath
    }
    
}
