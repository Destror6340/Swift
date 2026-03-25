//
//  Transistor+CoreDataProperties.swift
//  ElectroHelp
//
//  Created by iOS Dev Lab on 09/01/24.
//
//

import Foundation
import CoreData


extension Transistor {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Transistor> {
        return NSFetchRequest<Transistor>(entityName: "Transistor")
    }

    @NSManaged public var chanel: String?
    @NSManaged public var gateVoltage: String?
    @NSManaged public var hfe: String?
    @NSManaged public var maxCurrent: String?
    @NSManaged public var maxVoltage: String?
    @NSManaged public var name: String?
    @NSManaged public var thresholdVoltage: String?
    @NSManaged public var transconductancegm: String?
    @NSManaged public var type: String?
    @NSManaged public var zeroGateVoltageDrainCurrent: String?

}

extension Transistor : Identifiable {

}
