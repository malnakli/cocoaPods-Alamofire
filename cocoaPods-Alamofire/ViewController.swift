//
//  ViewController.swift
//  cocoaPods-Alamofire
//
//  Created by MoAir on 2015-09-11.
//  Copyright (c) 2015 Mo. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let searchPar = "a"
        Alamofire.request(.GET, "https://momo2015-2.myshopify.com/search?q=*w*&view=json").responseJSON() {
            (_, _, data, _) in
            println(data)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

