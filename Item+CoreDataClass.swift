//
//  Item+CoreDataClass.swift
//  DreamTing
//
//  Created by Mikael Teklehaimanot on 9/16/16.
//  Copyright © 2016 Mikael Teklehaimanot. All rights reserved.
//

import Foundation
import CoreData


public class Item: NSManagedObject {

    override public func awakeFromInsert() {
        super.awakeFromInsert()
        self.created = NSDate()
    }
    
}
