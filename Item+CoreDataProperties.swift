//
//  Item+CoreDataProperties.swift
//  DreamTing
//
//  Created by Mikael Teklehaimanot on 9/16/16.
//  Copyright © 2016 Mikael Teklehaimanot. All rights reserved.
//

import Foundation
import CoreData

extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item");
    }

    @NSManaged public var details: String?
    @NSManaged public var price: Double
    @NSManaged public var created: NSDate?
    @NSManaged public var title: String?
    @NSManaged public var toImage: Image?
    @NSManaged public var toCategory: Category?
    @NSManaged public var toStore: Store?

}
