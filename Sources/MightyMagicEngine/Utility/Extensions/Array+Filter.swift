//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-08.
//

import Foundation

extension Array {
    
    func filter<Property>(
        require keyPath: KeyPath<Element, Property>,
        to condition: (Property) -> Bool
    ) -> [Element]  {
        filter { element in
            let property = element[keyPath: keyPath]
            return condition(property)
        }
    }
    
    func filter<Property>(
        require keyPath: KeyPath<Element, Property>,
        toEqual expectedValue: Property?
    ) -> [Element] where Property: Equatable {
        guard let expectedValue = expectedValue else {
            return self
        }
        return filter(require: keyPath, to: { $0 == expectedValue })
    }
}
