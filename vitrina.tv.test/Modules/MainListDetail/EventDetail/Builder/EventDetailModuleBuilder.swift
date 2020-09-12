//
//  EventDetailModuleBuilder.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import UIKit

final class EventDetailModuleBuilder {
    func createModule(withData data: EventDetailData) -> EventViewController {
        let eventViewController = EventViewController(eventDetailData: data)

        return eventViewController
    }
}
