//
//  DataModel.swift
//  Desafio DIO
//
//  Created by Leonardo Almeida on 30/07/22.
//

import Foundation

struct BaseJson<T: Codable>: Codable {
    let status: Int
    let object: T
    
    enum CodingKeys: String, CodingKey {
        case status = "Status"
        case object = "Object"
    }
}
