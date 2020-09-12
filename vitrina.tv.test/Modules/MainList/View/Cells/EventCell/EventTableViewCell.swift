//
//  EventTableViewCell.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import UIKit

final class EventTableViewCell: UITableViewCell, TableViewCell {
    private lazy var timeIntervalLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.setContentHuggingPriority(.required, for: .horizontal)
        return label
    }()

    func configure(withModel model: TableCellModel) {
        guard let eventModel = model as? EventTableCellModel else {
            fatalError("Couldn't configure \(EventTableCellModel.self) with \(EventTableCellModel.self) model")
        }

        timeIntervalLabel.text = eventModel.timeIntervalInfo
        nameLabel.text = eventModel.name
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
        addSubview(timeIntervalLabel)
        addSubview(nameLabel)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            nameLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
            nameLabel.trailingAnchor.constraint(lessThanOrEqualTo: timeIntervalLabel.leadingAnchor, constant: -16),

            timeIntervalLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            timeIntervalLabel.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
