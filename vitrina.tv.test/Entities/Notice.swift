//
//  Notice.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import Foundation

struct Notice {
    var flightDate: Date?
    var gate: String?
}

extension Notice {
    static func getRandomNotice() -> Notice {
        let randomGateIndex = Int.random(in: 0..<SampleData.sampleGates.count)
        let gate = SampleData.sampleGates[randomGateIndex]

        let date = SampleData.randomDate()

        return Notice(flightDate: date, gate: gate)
    }
}
