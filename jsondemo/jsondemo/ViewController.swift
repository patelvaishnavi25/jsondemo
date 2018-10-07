//
//  ViewController.swift
//  jsondemo
//
//  Created by Vaishnavi Patel on 06/10/18.
//  Copyright © 2018 Vaishnavi Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    let obj = GetData().GujQueen();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let position = obj["position"] as! String;
        
        lbl.text = position;
        
        print(position);
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

