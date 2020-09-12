//
//  MainListDataRepository.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import UIKit

protocol MainListDataSource {
    func getMainListData() -> [MainListEntity]
}

final class MainListRandomDataSource: MainListDataSource {
    func getMainListData() -> [MainListEntity] {
        let randomCount = Int.random(in: 10..<100)


        return Array(0..<randomCount).map { _ in
            let randomValue = Int.random(in: 0...2)

            switch randomValue {
            case 0:
                return .notice(Notice.getRandomNotice())
            case 1:
                return .event(Event.getRandomEvent())
            default:
                return .move(Move.getRandomMove())
            }
        }
    }
}
