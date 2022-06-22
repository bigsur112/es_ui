//
//  ESModel.swift
//  es_server
//
//  Created by caicai on 2022/6/22.
//

import Foundation

struct ClientData : Codable {
    let uuid : UUID
    let table : Int
    let string : Int
}
