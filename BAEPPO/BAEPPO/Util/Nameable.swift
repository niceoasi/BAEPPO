//
//  Nameable.swift
//  BAEPPO
//
//  Created by Ethan on 2021/03/04.
//

import Foundation

protocol Nameable: AnyObject {
    static var identifier: String { get }
}

extension Nameable {
    static var identifier: String { String(describing: self) }
}
