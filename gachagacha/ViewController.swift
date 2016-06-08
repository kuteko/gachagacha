//
//  ViewController.swift
//  gachagacha
//
//  Created by 内山香 on 2016/06/06.
//  Copyright © 2016年 内山香. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func gacha(){
        
        //画面遷移
        self.performSegueWithIdentifier("result", sender: nil)
    }

}

