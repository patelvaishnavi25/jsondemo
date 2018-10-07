//
//  GetData.swift
//  jsondemo
//
//  Created by Vaishnavi Patel on 06/10/18.
//  Copyright © 2018 Vaishnavi Patel. All rights reserved.
//

import UIKit

class GetData: NSObject {
    
    func GujQueen() -> [String:Any] {
        
        var traindata : [String:Any] = [:];
        
        
        let url = URL(string: "https://api.railwayapi.com/v2/live/train/19034/date/07-10-2018/apikey/hft0l2w35p/");
        
        do {
            let data = try Data(contentsOf: url!);
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: []) as! [String:Any];
                
                traindata = json;
            } catch  {
                
            }
        } catch  {
            
        }
        return traindata;
        
    }

}
