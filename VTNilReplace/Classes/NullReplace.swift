//
//  NullReplace.swift
//  DemoOne
//
//  Created by VipulThummar on 09/12/16.
//  Copyright © 2017 BitMatrix. All rights reserved.
//

import UIKit

class NullReplace: NSObject {

    func dictionaryOfFilteredBy(dict: NSDictionary) -> NSDictionary {
        
        let replaced: NSMutableDictionary = NSMutableDictionary(dictionary : dict)
        let blank: String = ""
        
        for (key, _) in dict
        {
            let object = dict[key] as AnyObject
            
            if (object.isKind(of: NSNull.self))
            {
                replaced[key] = blank as AnyObject?
            }
            else if (object is [AnyHashable: AnyObject])
            {
                replaced[key] = dictionaryOfFilteredBy(dict: object as! NSDictionary)
            }
            else if (object is [AnyObject])
            {
                replaced[key] = arrayOfFilteredBy(arr: object as! NSArray)
            }
            else
            {
                replaced[key] = "\(object)" as AnyObject?
            }
        }
        return replaced
    }
    
    func arrayOfFilteredBy(arr: NSArray) -> NSArray {
        
        let replaced: NSMutableArray = NSMutableArray(array: arr)
        let blank: String = ""
        
        for i in 0..<arr.count
        {
            let object = arr[i] as AnyObject
            
            if (object.isKind(of: NSNull.self))
            {
                replaced[i] = blank as AnyObject
            }
            else if (object is [AnyHashable: AnyObject])
            {
                replaced[i] = dictionaryOfFilteredBy(dict: arr[i] as! NSDictionary)
            }
            else if (object is [AnyObject])
            {
                replaced[i] = arrayOfFilteredBy(arr: arr[i] as! NSArray)
            }
            else
            {
                replaced[i] = "\(object)" as AnyObject
            }
            
        }
        return replaced
    }
}
