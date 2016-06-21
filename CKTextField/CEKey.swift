//
//  CEKey.swift
//  
//
//  Created by David on 16/6/21.
//
//

import UIKit

class CEKey: UIButton {
    
    var action:String!
    
    
    
    init(frame: CGRect, actionMark: String){
        super.init(frame: frame)
        action = actionMark
        self.setTitle("\(action)", forState: UIControlState.Normal)
        self.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        self.backgroundColor = UIColor.grayColor()
        self.adjustsImageWhenHighlighted = true
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    // Drawing code
    }
    */
    
}
