//
//  UIManager.swift
//  SimpleConstrains
//
//  Created by Arabia-IT on 7/29/18.
//  Copyright © 2018 Arabia-IT. All rights reserved.
//

import Foundation
import UIKit

class UIManager  {
    static func StartDrowingInView(view: UIView) {
        
        let button1 = UIButton()
        button1.setTitle("click me", for: .normal)
        let imageView = UIImageView()
        imageView.image = UIImage(named: "image")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.backgroundColor = UIColor.red
        let const1 = imageView.Width ==  view.Width
        let const2 = imageView.Height == view.Height
        let const3 = imageView.Center_x == view.Center_x
        let const4 = imageView.Center_y == view.Center_y
        
        let const7 = button1.Center_x == view.Center_x
        let const8 = button1.Center_y == view.Center_y
        view.addSubview(imageView)
        view.addSubview(button1)
        view.addConstraints([const1,const2,const3,const4,const7,const8])
        
        
    }
}
