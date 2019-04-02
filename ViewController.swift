//
//  ViewController.swift
//  8ballApp
//
//  Created by Rishabh Khandelwal on 3/2/19.
//  Copyright © 2019 Rishabh Khandelwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    let iamgeArry=["ball1","ball2"," ball3","ball4","ball5"]
    var ball_1 : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        magic()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func gamechanger(_ sender: Any) {
        magic()
    }
    func magic(){
        ball_1=Int(arc4random_uniform(5))
        imageView.image=UIImage(named: iamgeArry[ball_1])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        magic()
    }
    
}

