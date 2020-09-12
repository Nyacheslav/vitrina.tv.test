//
//  MainListView.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import UIKit

protocol MainListViewResponderDelegate: UITableViewDataSource {
    func onDidSelectRow(atIndexPath indexPath: IndexPath)
}

final class MainListView: View {

    weak var responderDelegate: MainListViewResponderDelegate?

    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.separatorStyle = .singleLine
        tableView.backgroundColor = .none
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        return tableView
    }()

    convenience init(responderDelegate: MainListViewResponderDelegate? = nil) {
        self.init(frame: .zero)
        self.responderDelegate = responderDelegate
        self.tableView.dataSource = responderDelegate
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        commonInit()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func commonInit() {
        super.commonInit()

        registerCells()
    }

    private func registerCells() {
        tableView.registerTableCell(cellClass: NoticeTableViewCell.self,
                                    withModel: NoticeTableCellModel.self)
        tableView.registerTableCell(cellClass: EventTableViewCell.self,
                                    withModel: EventTableCellModel.self)
        tableView.registerTableCell(cellClass: MoveTableViewCell.self,
                                    withModel: MoveTableCellModel.self)
    }

    override func setupAppearance() {
        backgroundColor = .white
    }

    override func setupSubviews() {
        addSubview(tableView)
    }

    override func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }

    func updateView() {
        tableView.reloadData()
    }
}
