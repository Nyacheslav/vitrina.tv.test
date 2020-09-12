//
//  Move.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import Foundation

class Move {
    var fromPlace: String?
    var toPlace: String?
    var estimateTime: TimeInterval?

    init(fromPlace: String?,
         toPlace: String?,
         estimateTime: TimeInterval?) {
        self.fromPlace = fromPlace
        self.estimateTime = estimateTime
        self.toPlace = toPlace
    }
}

extension Move {
    static func getRandomMove() -> Move {
        let randomTimeIntervalValue = Int.random(in: 0..<100000)

        let fromPlaceIndex = Int.random(in: 0..<SampleData.samplePlaces.count)
        let fromPlace = SampleData.samplePlaces[fromPlaceIndex]

        let toPlaceIndex: Int
        if fromPlaceIndex + 1 < SampleData.samplePlaces.count {
            toPlaceIndex = fromPlaceIndex + 1
        } else {
            toPlaceIndex = fromPlaceIndex - 1
        }

        let toPlace = SampleData.samplePlaces[toPlaceIndex]

        return Move(fromPlace: fromPlace,
                    toPlace: toPlace,
                    estimateTime: TimeInterval(exactly: randomTimeIntervalValue))
    }
}

