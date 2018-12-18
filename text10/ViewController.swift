//
//  ViewController.swift
//  text10
//
//  Created by student on 2018/11/21.
//  Copyright © 2018年 wenjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func move(_ sender: Any) {
        UIView.animate(withDuration: 2) {
            if(self.myView.center.x != self.view.bounds.width){
                self.myView.center.x=self.view.bounds.width
            }else{
                self.myView.center.x=106
            }
            
            
        }
        
    }
    
    @IBAction func scale(_ sender: Any) {
        UIView.animate(withDuration: 3, delay: 0, options: .curveLinear, animations: {
            self.myView.transform=CGAffineTransform(scaleX: 0.5, y: 0.5)
        }, completion: nil)
    }
    
    @IBAction func transform(_ sender: Any) {
        UIView.animate(withDuration: 2, delay: 0, options: [.curveLinear,.autoreverse], animations:{self.myView.transform = CGAffineTransform(translationX: 100, y: 100).scaledBy(x: 0.5, y: 0.5).rotated(by: 180)
            
            self.myView.transform = CGAffineTransform.init(rotationAngle: CGFloat(Double.pi))
            self.myView.transform = CGAffineTransform.identity
            self.myView.transform = CGAffineTransform.init(rotationAngle: CGFloat(Double.pi))
            self.myView.transform = CGAffineTransform.identity
        } , completion: nil)
        
    }
}

