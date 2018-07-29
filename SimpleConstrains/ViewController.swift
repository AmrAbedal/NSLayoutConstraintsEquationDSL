//
//  ViewController.swift
//  SimpleConstrains
//
//  Created by Arabia-IT on 7/29/18.
//  Copyright © 2018 Arabia-IT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let button1 = UIButton()
        button1.translatesAutoresizingMaskIntoConstraints = false
    button1.backgroundColor = UIColor.red
        let const1 = button1.width += 0.5 * view.width
        let const2 = button1.height += 0.5 * view.height
        let const3 = button1.Center_x += view.Center_x
        let const4 = button1.Center_y += view.Center_y
        
        NSLayoutConstraint.activate([
            button1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5)
        ])
        
        view.addSubview(button1)
        view.addConstraints([const1,const2,const3,const4])
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

typealias View_Attribute = (Any,NSLayoutAttribute)
typealias Multiblier = CGFloat
typealias Constant = CGFloat
typealias  MultyplierMultView_Attribute = (Multiblier,View_Attribute)
typealias MultyplierMultView_AttributePlusConstant = (MultyplierMultView_Attribute,Constant)


