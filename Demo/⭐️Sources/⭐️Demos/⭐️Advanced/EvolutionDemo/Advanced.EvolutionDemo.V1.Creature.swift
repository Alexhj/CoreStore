//
// Demo
// Copyright © 2020 John Rommel Estropia, Inc. All rights reserved.

import UIKit
import CoreStore


// MARK: - Advanced.EvolutionDemo.V1.Creature

@objc(Advanced_EvolutionDemo_V1_Creature)
final class Advanced_EvolutionDemo_V1_Creature: NSManagedObject, Advanced.EvolutionDemo.CreatureType {

    @NSManaged
    dynamic var dnaCode: Int64
    
    @NSManaged
    dynamic var numberOfFlagella: Int32
    
    
    // MARK: CustomStringConvertible
    
    override var description: String {
        
        return """
            dnaCode: \(self.dnaCode)
            numberOfFlagella: \(self.numberOfFlagella)
            """
    }
    
    
    // MARK: Advanced.EvolutionDemo.CreatureType
    
    func mutate(in transaction: BaseDataTransaction) {
        
        self.numberOfFlagella = .random(in: 1...200)
    }
}
