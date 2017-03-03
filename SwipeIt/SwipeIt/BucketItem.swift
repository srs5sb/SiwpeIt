//
//  BucketItem.swift
//  SwipeIt
//
//  Created by Katharine Xie on 2/10/17.
//  Copyright © 2017 Katharine Xie. All rights reserved.
//
import UIKit
import Foundation

class BucketItem {
    var itemName: String
    var itemDes: String
    var itemLong: Double
    var itemLat: Double
    var itemDate: String
    var checked: Bool
    
    init(name:String, des:String, longi: Double, lat:Double, date:String, checked: Bool) {
        self.itemName = name
        self.itemDes = des
        self.itemLong = longi
        self.itemLat = lat
        self.itemDate = date
        self.checked = false;
      
    }
    
    
    class func compareToBucket(a: BucketItem, b:BucketItem) -> Bool{
        //DATE A
        
        let StrA = a.itemDate
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let DateA = dateFormatter.date(from:StrA)
        //DATE B
        let StrB = b.itemDate
        
        let DateB = dateFormatter.date(from:StrB)
        //Bool
        
        if (DateA! < DateB!){
            return true
        }
        else {
            return false
        }
 
        
    }
}
