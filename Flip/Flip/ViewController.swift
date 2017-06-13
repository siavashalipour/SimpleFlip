//
//  ViewController.swift
//  Flip
//
//  Created by siavash abbasalipour on 13/6/17.
//  Copyright © 2017 Siavash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var firstView: UIView!
    var secondView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        firstView = UIView(frame: CGRect(x: 32, y: 32, width: 128, height: 128))
        secondView = UIView(frame: CGRect(x: 32, y: 32, width: 128, height: 128))
        
        firstView.backgroundColor = UIColor.red
        secondView.backgroundColor = UIColor.blue
        
        secondView.isHidden = true
        
        view.addSubview(firstView)
        view.addSubview(secondView)
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(flip))
        view.addGestureRecognizer(tap)
        
    }
    func flip() {
        let transitionOptions: UIViewAnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        
        UIView.transition(with: firstView, duration: 1.0, options: transitionOptions, animations: {
            self.firstView.isHidden = !self.firstView.isHidden
        })
        
        UIView.transition(with: secondView, duration: 1.0, options: transitionOptions, animations: {
            self.secondView.isHidden = !self.firstView.isHidden
        })
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

