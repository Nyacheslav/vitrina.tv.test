//
//  NoticeDetailData.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import Foundation

struct NoticeDetailData {
    // Seems like it's duplicating NoticeCellModel, but it's like that just because of terms of assignment.
    // In real project screen would be different from cell, of course
    
    let flightDate: Date?
    let gateInfo: String?
    
    init(flightDate: Date?,
         gateInfo: String?) {
        self.flightDate = flightDate
        self.gateInfo = gateInfo
    }
    
    var flightDateInfo: String? {
        return flightDate.flatMap { date in
            let formatter = DateFormatter()
            formatter.dateFormat = Config.appDefaultDateFormat
            return formatter.string(from: date)
        }
    }
}
