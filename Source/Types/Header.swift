//
//  Header.swift
//
//  Copyright © 2018 Nervos Foundation. All rights reserved.
//

import Foundation

public struct Seal: Codable {
    public let nonce: String
    public let proof: HexString
}

public struct Header: Codable {
    public let version: Version
    public let parentHash: H256
    public let timestamp: Timestamp
    public let number: BlockNumber
    public let epoch: EpochNumber
    public let transactionsRoot: H256
    public let proposalsHash: H256
    public let witnessesRoot: H256
    public let difficulty: HexNumber
    public let unclesHash: H256
    public let unclesCount: Number
    public let dao: String
    public let hash: H256

    public let seal: Seal

    enum CodingKeys: String, CodingKey {
        case version
        case parentHash = "parent_hash"
        case timestamp
        case number
        case epoch
        case transactionsRoot = "transactions_root"
        case proposalsHash = "proposals_hash"
        case witnessesRoot = "witnesses_root"
        case difficulty
        case unclesHash = "uncles_hash"
        case unclesCount = "uncles_count"
        case hash
        case dao
        case seal
    }
}
