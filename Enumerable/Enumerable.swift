//
//  Enumerable.swift
//  Enumerable
//
//  Created by Hirose.Yudai on 2017/08/28.
//  Copyright © 2017年 Hirose.Yudai. All rights reserved.
//

import Foundation

public protocol Enumerable: RawRepresentable {
    static var enumerate: AnySequence<Self> { get }
    static var elements: [Self] { get }
    static var count: Int { get }
    static var startIndex: Int { get }
}

public extension Enumerable where RawValue == Int {
    public static var enumerate: AnySequence<Self> {
        return AnySequence { () -> AnyIterator<Self> in
            var i = startIndex
            return AnyIterator { () -> Self? in
                let element = Self(rawValue: i)
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
    
    public static var startIndex: Int {
        return 0
    }
}
