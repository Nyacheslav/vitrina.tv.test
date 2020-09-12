//
//  ApplicationVariables.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import Foundation

// Global constants will be in Uppercased style
let Strings = R.string.localizable.self

enum Config {
    static let appDefaultDateFormat: String = "dd.MM.yyyy"
    static let appDefaultTimeFormat: String = "HH:mm"
}

enum SampleData {
    static func randomDate() -> Date {
        return Date(timeIntervalSinceNow: TimeInterval(Int.random(in: 1000..<11201200)))
    }

    static let samplePlaces = ["Москва", "Омск", "Петербург", "Ростов", "Казань"]
    static let sampleGates = ["Ворота №1", "Ворота №2", "Ворота №3", "Ворота №4", "Ворота №5"]
    static let sampleEventNames = ["Уборка", "Проверка багажа", "Паспортный контроль", "Регистрация", "Посадка"]
}
