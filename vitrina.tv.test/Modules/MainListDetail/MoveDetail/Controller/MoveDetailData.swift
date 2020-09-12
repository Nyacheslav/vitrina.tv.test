//
//  MoveDetailData.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import Foundation

struct MoveDetailData {
    // Seems like it's duplicating MoveCellModel, but it's like that just because of terms of assignment.
    // In real project screen would be different from cell, of course

    private let fromPlace: String?
    private let toPlace: String?
    private let estimateTime: TimeInterval?

    init(fromPlace: String?,
         toPlace: String?,
         estimateTime: TimeInterval?) {
        self.fromPlace = fromPlace
        self.toPlace = toPlace
        self.estimateTime = estimateTime
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
