//
//  ViewController.swift
//  cocoaPods-Alamofire
//
//  Created by MoAir on 2015-09-11.
//  Copyright (c) 2015 Mo. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let searchBar = "b"
        let url = "https://momo2015-2.myshopify.com/search?q=*\(searchBar)*&type=product&view=json"
        Alamofire.request(.GET, url).responseJSON() {
            (_, _, data, _) in
            
            if let json: AnyObject = data{
                let product = JSON(json)
                for (key: String, obj: JSON) in product {
                     println(obj["title"])
                }
               

            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

