//
//  Enumerable.swift
//  Enumerable
//
//  Created by Hirose.Yudai on 2017/08/28.
//  Copyright © 2017年 Hirose.Yudai. All rights reserved.
//

import Foundation

public protocol Enumerable: RawRepresentable, Hashable {
    static var enumerate: AnySequence<Self> { get }
    static var elements: [Self] { get }
    static var count: Int { get }
}

public extension Enumerable {
    public static var enumerate: AnySequence<Self> {
        return AnySequence { () -> AnyIterator<Self> in
            var i = 0
            return AnyIterator { () -> Self? in
                let element = withUnsafeBytes(of: &i) { $0.load(as: Self.self) }
                if element.hashValue != i { return nil }
                i += 1
                return element
            }
        }
    }
    public static var elements: [Self] {
        return Array(enumerate)
    }
    
    public static var count: Int {
        return elements.count
    }
}
