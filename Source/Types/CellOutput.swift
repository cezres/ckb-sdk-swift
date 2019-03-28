//
//  CellOutput.swift
//  CKB
//
//  Created by James Chen on 2018/12/14.
//  Copyright © 2018 Nervos Foundation. All rights reserved.
//

import Foundation

public struct CellOutput: Codable, Param {
    let capacity: Capacity
    let data: HexString
    let lock: H256
    let type: Script?

    public var param: [String: Any] {
        var result: [String: Any] = [
            "capicity": capacity,
            "data": data,
            "lock": lock
        ]
        if let type = type {
            result["type"] = type
        }
        return result
    }
}

public struct CellOutputWithOutPoint: Codable {
    let outPoint: OutPoint
    let capacity: Capacity
    let lock: H256

    enum CodingKeys: String, CodingKey {
        case outPoint = "out_point"
        case capacity, lock
    }
}