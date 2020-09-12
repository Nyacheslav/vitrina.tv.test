//
//  NoticeTableViewCell.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import UIKit

final class NoticeTableViewCell: UITableViewCell, TableViewCell {
    private lazy var flightDateLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var gateLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.setContentHuggingPriority(.required, for: .horizontal)
        return label
    }()

    func configure(withModel model: TableCellModel) {
        guard let noticeModel = model as? NoticeTableCellModel else {
            fatalError("Couldn't configure \(NoticeTableViewCell.self) with \(NoticeTableCellModel.self) model")
        }

        flightDateLabel.text = noticeModel.flightDateInfo
        gateLabel.text = noticeModel.gateInfo
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        commonInit()
    }

    private func commonInit() {
        setupSubviews()
        setupConstraints()
    }

    private func setupSubviews() {
        addSubview(flightDateLabel)
        addSubview(gateLabel)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            gateLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            gateLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            gateLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
            gateLabel.trailingAnchor.constraint(lessThanOrEqualTo: flightDateLabel.leadingAnchor, constant: -16),

            flightDateLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            flightDateLabel.centerYAnchor.constraint(equalTo: gateLabel.centerYAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
