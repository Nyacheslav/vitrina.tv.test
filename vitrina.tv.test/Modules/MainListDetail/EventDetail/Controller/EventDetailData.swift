//
//  EventDetailData.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import Foundation

struct EventDetailData {

    // Seems like it's duplicating EventCellModel, but it's like that just because of terms of assignment.
    // In real project screen would be different from cell, of course

    let startTime: Date?
    let endTime: Date?
    let name: String

    init(startTime: Date?,
         endTime: Date?,
         name: String) {
        self.startTime = startTime
        self.endTime = endTime
        self.name = name
    }

    var timeIntervalInfo: String? {
        guard let startTime = startTime,
            let endTime = endTime else { return nil }

        let formatter = DateFormatter()
        formatter.dateFormat = Config.appDefaultTimeFormat

        let startTimeInfo = formatter.string(from: startTime)
        let endTimeInfo = formatter.string(from: endTime)

        return Strings.main_list_time_interval(startTimeInfo, endTimeInfo)
    }
}
