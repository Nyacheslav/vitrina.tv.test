//
//  Event.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import Foundation

class Event {
    var startTime: Date?
    var endTime: Date?
    var name: String!

    init(startTime: Date?,
         endTime: Date?,
         name: String) {
        self.startTime = startTime
        self.endTime = endTime
        self.name = name
    }
}

extension Event {
    static func getRandomEvent() -> Event {
        let randomNameIndex = Int.random(in: 0..<SampleData.sampleEventNames.count)
        let name = SampleData.sampleEventNames[randomNameIndex]

        let startTime = SampleData.randomDate()
        let endTime = SampleData.randomDate()

        return Event(startTime: min(startTime, endTime),
                     endTime: max(endTime, startTime),
                     name: name)
    }
}
