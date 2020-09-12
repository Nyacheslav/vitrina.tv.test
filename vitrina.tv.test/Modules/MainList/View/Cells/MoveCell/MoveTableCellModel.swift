//
//  MoveTableCellModel.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import Foundation

struct MoveTableCellModel: TableCellModel {
    let fromPlace: String?
    let toPlace: String?
    let estimateTime: TimeInterval?
    var onSelectAction: (() -> ())?

    init(fromPlace: String?,
         toPlace: String?,
         estimateTime: TimeInterval?,
         onSelectAction: (() -> ())? = nil) {
        self.fromPlace = fromPlace
        self.toPlace = toPlace
        self.estimateTime = estimateTime
        self.onSelectAction = onSelectAction
    }

    var pathInfo: String? {
        guard let fromPlace = fromPlace,
            let toPlace = toPlace else  { return nil }

        return Strings.main_list_move_path(fromPlace, toPlace)
    }

    var estimateTimeInfo: String? {
        guard let formattedTime = estimateTime.flatMap({ $0.stringFormatted() }) else { return nil}
        return Strings.main_list_move_estimate_time(formattedTime)
    }
}

