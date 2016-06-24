//
//  CETextField.swift
//  
//
//  Created by David on 16/6/21.
//
//

import UIKit

enum CEInputType{
    case Bin
    case Oct
    case Dec
    case Hex
}

class CETextField: UITextField {

    var type:CEInputType = CEInputType.Dec
    
    var inputType:CEInputType{
        get{
            return type
        }
        set(value){
            type = value
        }
    }
    
    var keyboard:CEKeyboard!
    
    
    override init(frame: CGRect){
        super.init(frame: frame)
        self.borderStyle = UITextBorderStyle.RoundedRect
        
        keyboard = CEKeyboard(frame: CGRectMake(0, 0, 0, 200))
        self.inputView = keyboard
        
        for key in keyboard.keys{
            key.addTarget(self, action: #selector(CETextField.keyAction(_:)), forControlEvents: UIControlEvents.TouchDown)
        }
        
    }
    
    func keyAction(sender: CEKey){
        
        switch sender.action {
        case "CE":
            self.text = ""
            break
        case "<x":
            if (self.text != nil) {
                if self.text! != "" {
                    self.text!.removeAtIndex(self.text!.endIndex.predecessor())
                }
            }
            
            break
        default:
            self.text! += sender.action
            break
        }
        
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
