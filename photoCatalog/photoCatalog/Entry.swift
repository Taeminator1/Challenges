//
//  Entry.swift
//  photoCatalog
//
//  Created by 윤태민 on 7/7/21.
//  Copyright © 2021 Taemin Yun. All rights reserved.
//

import Foundation

struct Entry: Codable {
    let id, source, language: String?
    let senses: [Sense]?
}

struct Sense: Codable {
    let id, definition: String?
    let translations: [String: Example]?
    let examples: [Example]?
}

struct Example: Codable {
    let text: String?
}
