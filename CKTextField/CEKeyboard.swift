//
//  CEKeyboard.swift
//  CKTextField
//
//  Created by David on 16/6/21.
//  Copyright (c) 2016年 David. All rights reserved.
//

import UIKit

class CEKeyboard: UIView {

    var keys:[CEKey!] = []
    
    var width = UIScreen.mainScreen().bounds.width
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        for i in 0...1{
            keys.append(CEKey(frame: CGRectMake(8+68*CGFloat(i), 8, 60, 60), actionMark: "\(i)"))
            self.addSubview(keys[i])
        }
        
        keys.append(CEKey(frame: CGRectMake(width-68, 8, 60, 60), actionMark: "<x"))
        self.addSubview(keys[2])
        
        keys.append(CEKey(frame: CGRectMake(width-68*2, 8, 60, 60), actionMark: "CE"))
        self.addSubview(keys[3])
    }
    
    required init?(coder aDecoder: NSCoder) {
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
