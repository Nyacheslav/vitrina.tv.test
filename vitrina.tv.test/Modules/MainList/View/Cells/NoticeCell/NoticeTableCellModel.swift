//
//  NoticeTableCellModel.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import Foundation

struct NoticeTableCellModel: TableCellModel {
    let flightDate: Date?
    let gateInfo: String?
    var onSelectAction: (() -> ())?

    init(flightDate: Date?,
         gateInfo: String?,
         onSelectAction: (() -> ())? = nil) {
        self.flightDate = flightDate
        self.gateInfo = gateInfo
        self.onSelectAction = onSelectAction
    }

    var flightDateInfo: String? {
        return flightDate.flatMap { date in
            let formatter = DateFormatter()
            formatter.dateFormat = Config.appDefaultDateFormat
            return formatter.string(from: date)
        }
    }
}
