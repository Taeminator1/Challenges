//
//  Entry.swift
//  photoCatalog
//
//  Created by 윤태민 on 7/7/21.
//  Copyright © 2021 Taemin Yun. All rights reserved.
//

import Foundation

struct Entry: Codable {
    let id: String
    let language: String
    let senses: [Sense]?
}

struct Sense: Codable {
    let id, definition: String?
}

struct DemoData: Codable {
    let singer: String
    let album: String
}
