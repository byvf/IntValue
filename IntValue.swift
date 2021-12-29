//
//  IntValue.swift
//  ListBook
//
//  Created by Vladylav Filippov on 29.06.2021.
//

import Foundation

@propertyWrapper struct IntValue {
    
    private var _wrappedValue: Int = 0
    
    var wrappedValue: Int {
        get {
            return _wrappedValue
        } set {
            _wrappedValue = newValue
        }
    }
    
    init(wrappedValue: Int = 0) {
        self.wrappedValue = wrappedValue
    }
    
    init() {
        self.wrappedValue = 0
    }
}

extension IntValue: Codable {
    
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if container.decodeNil() {
            _wrappedValue = 0
        } else {
            _wrappedValue = try container.decode(Int.self)
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(_wrappedValue)
    }
}
