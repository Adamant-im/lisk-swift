//
//  LoaderStatusResponse.swift
//  Lisk
//
//  Created by Andrew Barba on 12/27/17.
//

import Foundation

/// https://docs.lisk.io/docs/lisk-api-080-loader#section-get-loading-status
extension Loader {

    public struct StatusResponse: APIResponse {

        public let success: Bool

        public let loaded: Bool

        public let now: UInt64

        public let blocksCount: UInt64
    }
}
