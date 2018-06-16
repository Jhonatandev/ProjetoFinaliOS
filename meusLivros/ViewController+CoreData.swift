//
//  ViewController+CoreData.swift
//  meusLivros
//
//  Created by Professor on 16/06/18.
//  Copyright © 2018 Joanantha. All rights reserved.
//

import UIKit
import CoreData

extension UIViewController{
    
    var context: NSManagedObjectContext{
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    return appDelegate.persistentContainer.viewContext
    }
    
}
