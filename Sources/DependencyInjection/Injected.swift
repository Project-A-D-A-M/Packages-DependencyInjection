//
//  Injected.swift
//  DependencyInjectionService
//
//  Created by Gabriel Medeiros Martins on 10/07/24.
//

import Foundation

@propertyWrapper
struct Injected<Service> {
    
    private let type: Service.Type
    
    init(_ type: Service.Type = Service.self) {
        self.type = type
    }
    
    var wrappedValue: Service {
        Dependencies.resolve(for: Service.self)
    }
}
