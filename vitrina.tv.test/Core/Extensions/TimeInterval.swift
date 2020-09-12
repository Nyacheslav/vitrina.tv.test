//
//  TimeInterval.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import Foundation

extension TimeInterval {
    // builds string in app's labels format 00:00.0
    func stringFormatted() -> String {
        let time = NSInteger(self)
        
        let seconds = time % 60
        let minutes = (time / 60) % 60
        let hours = (time / 3600)

        return String(format: "%0.2d:%0.2d:%0.2d", hours, minutes, seconds)

    }
}
