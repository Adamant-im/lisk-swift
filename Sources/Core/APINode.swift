//
//  APINode.swift
//  Lisk
//
//  Created by Andrew Barba on 12/26/17.
//  Copyright © 2017 Andrew Barba. All rights reserved.
//

import Foundation

/// Represents a Lisk node with API enabled
public struct APINode {

    /// Origin url of this node
    public let origin: String

    public init(origin: String) {
        self.origin = origin
    }
}

extension Array where Element == APINode {

    /// Mainnet nodes
    public static let mainnet: [APINode] = [
        .init(origin: "https://node01.lisk.io:443"),
        .init(origin: "https://node02.lisk.io:443"),
        .init(origin: "https://node03.lisk.io:443"),
        .init(origin: "https://node04.lisk.io:443"),
        .init(origin: "https://node05.lisk.io:443"),
        .init(origin: "https://node06.lisk.io:443"),
        .init(origin: "https://node07.lisk.io:443"),
        .init(origin: "https://node08.lisk.io:443")
    ]

    /// Testnet nodes
    public static let testnet: [APINode] = [
        .init(origin: "http://testnet.lisk.io:7000")
    ]

    /// Betanet nodes
    public static let betanet: [APINode] = [
        .init(origin: "http://94.237.41.99:5000"),
        .init(origin: "http://209.50.52.217:5000"),
        .init(origin: "http://94.237.26.150:5000"),
        .init(origin: "http://83.136.249.102:5000"),
        .init(origin: "http://94.237.65.179:5000")
    ]
}

extension Array where Element == APINode {

    /// Selects a random node from a list of nodes
    public func select(random: Bool = false) -> APINode {
        let index: Int = random ? Random.roll(max: count) : 0
        return self[index]
    }
}
