//
//  AmrConstrains.swift
//  SimpleConstrains
//
//  Created by Arabia-IT on 7/29/18.
//  Copyright © 2018 Arabia-IT. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    var width: View_Attribute  {
        return(self,NSLayoutAttribute.width)
    }
    var height: View_Attribute  {
        return(self,NSLayoutAttribute.height)
    }
    var Center_x: View_Attribute  {
        return(self,NSLayoutAttribute.centerX)
    }
    var Center_y: View_Attribute  {
        return(self,NSLayoutAttribute.centerY)
        
    }
    var top: View_Attribute  {
        return(self,NSLayoutAttribute.top)
        
    }
    var bottom: View_Attribute  {
        return(self,NSLayoutAttribute.bottom)
        
    }
    var leading: View_Attribute  {
        return(self,NSLayoutAttribute.leading)
        
    }
    var trailing: View_Attribute  {
        return(self,NSLayoutAttribute.trailing)
        
    }
}

func *(left: Multiblier, right: View_Attribute ) -> (MultyplierMultView_Attribute) {
    return (left,right)
}
func +(left: MultyplierMultView_Attribute, right: Constant ) -> (MultyplierMultView_AttributePlusConstant) {
    return (left,right)
}

func +=(left: View_Attribute, right: MultyplierMultView_AttributePlusConstant ) -> NSLayoutConstraint {
    return NSLayoutConstraint.init(item: left.0, attribute: left.1, relatedBy:NSLayoutRelation.equal , toItem: right.0.1.0, attribute: right.0.1.1, multiplier: right.0.0, constant: right.1)
}
func +=(left: View_Attribute, right: View_Attribute ) -> NSLayoutConstraint {
    return NSLayoutConstraint.init(item: left.0, attribute: left.1, relatedBy:NSLayoutRelation.equal , toItem: right.0, attribute: right.1, multiplier: 1, constant: 0)
}
func +=(left: View_Attribute, right: Constant ) -> NSLayoutConstraint {
    return NSLayoutConstraint.init(item: left.0, attribute: left.1, relatedBy:NSLayoutRelation.equal , toItem: nil , attribute: .notAnAttribute, multiplier: 1, constant: right)
}
func +=(left: View_Attribute, right: MultyplierMultView_Attribute ) -> NSLayoutConstraint {
    return NSLayoutConstraint.init(item: left.0, attribute: left.1, relatedBy:NSLayoutRelation.equal , toItem: right.1.0 , attribute: right.1.1, multiplier: right.0, constant: 0)
}
