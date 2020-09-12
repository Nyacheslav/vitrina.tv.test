//
//  MainListViewController + Navigation.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

extension MainListViewController {
    func showMoveDetailViewController(withMoveModel model: MoveTableCellModel) {
        let moveDetailData = MoveDetailData(fromPlace: model.fromPlace,
                                            toPlace: model.toPlace,
                                            estimateTime: model.estimateTime)
        let moveDetailViewController = MoveDetailModuleBuilder().createModule(withData: moveDetailData)
        navigationController?.pushViewController(moveDetailViewController, animated: true)
    }

    func showNoticeDetailViewController(withNoticeModel model: NoticeTableCellModel) {
        let noticeDetailData = NoticeDetailData(flightDate: model.flightDate,
                                                gateInfo: model.gateInfo)
        let noticeDetailViewController = NoticeDetailModuleBuilder().createModule(withData: noticeDetailData)
        navigationController?.pushViewController(noticeDetailViewController, animated: true)
    }

    func showEventDetailViewController(withEventModel model: EventTableCellModel) {
        let eventDetailData = EventDetailData(startTime: model.startTime,
                                              endTime: model.endTime,
                                              name: model.name)
        let eventDetailViewController = EventDetailModuleBuilder().createModule(withData: eventDetailData)
        navigationController?.pushViewController(eventDetailViewController, animated: true)
    }
}
