//
//  MainListViewController.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import UIKit

final class MainListViewController: UIViewController {
    
    private lazy var mainListView = MainListView(responderDelegate: self)
    private var dataSource: MainListDataSource!

    var cellModels: [TableCellModel] = [] {
        didSet {
            mainListView.updateView()
        }
    }

    override func loadView() {
        view = mainListView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationBar()

        loadList()
    }

    private func loadList() {
        cellModels = dataSource.getMainListData().compactMap(getCellModel)
    }

    private func getCellModel(fromEntity entity: MainListEntity) -> TableCellModel {
        switch entity {
        case .event(let event):
            var eventCellModel = EventTableCellModel(startTime: event.startTime,
                                                     endTime: event.endTime,
                                                     name: event.name)
            eventCellModel.onSelectAction = { [unowned self] in
                self.showEventDetailViewController(withEventModel: eventCellModel)
            }
            return eventCellModel
        case .notice(let notice):
            var noticeCellModel = NoticeTableCellModel(flightDate: notice.flightDate,
                                                       gateInfo: notice.gate)
            noticeCellModel.onSelectAction = { [unowned self] in
                self.showNoticeDetailViewController(withNoticeModel: noticeCellModel)
            }
            return noticeCellModel
        case .move(let move):
            var moveCellModel = MoveTableCellModel(fromPlace: move.fromPlace,
                                                   toPlace: move.toPlace,
                                                   estimateTime: move.estimateTime)
            moveCellModel.onSelectAction = { [unowned self] in
                self.showMoveDetailViewController(withMoveModel: moveCellModel)
            }
            return moveCellModel
        }
    }

    private func setupNavigationBar() {
        title = Strings.main_list_title()
    }

    convenience init(dataSource: MainListDataSource) {
        self.init()
        self.dataSource = dataSource
    }

    private init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MainListViewController: MainListViewResponderDelegate {
    func onDidSelectRow(atIndexPath indexPath: IndexPath) {
        cellModels[indexPath.row].onSelectAction?()
    }
}
