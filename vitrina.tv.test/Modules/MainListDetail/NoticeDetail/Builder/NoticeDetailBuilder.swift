//
//  NoticeDetailBuilder.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import UIKit

final class NoticeDetailModuleBuilder {
    func createModule(withData data: NoticeDetailData) -> NoticeDetailViewController {
        let noticeViewController = NoticeDetailViewController(noticeDetailData: data)

        return noticeViewController
    }
}
