//
//  DefaultValue.swift
//  DataLoader
//
//  Created by Grant Butler on 6/9/19.
//  Copyright © 2019 Grant Butler. All rights reserved.
//

import Foundation

@propertyDelegate
struct DefaultValue<T> {
    
    private let defaultValue: () -> T
    private var storedValue: T
    
    var value: T! {
        get {
            return storedValue
        }
        set {
            storedValue = newValue ?? defaultValue()
        }
    }
    
    init(defaultValue: @autoclosure @escaping () -> T) {
        self.defaultValue = defaultValue
        self.storedValue = defaultValue()
    }
    
}
