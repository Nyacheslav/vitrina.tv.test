//
//  MoveTableViewCell.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import UIKit

final class MoveTableViewCell: UITableViewCell, TableViewCell {
    private lazy var pathLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var timeLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.setContentHuggingPriority(.required, for: .horizontal)
        return label
    }()

    func configure(withModel model: TableCellModel) {
        guard let moveModel = model as? MoveTableCellModel else {
            fatalError("Couldn't configure \(MoveTableViewCell.self) with \(MoveTableCellModel.self) model")
        }

        pathLabel.text = moveModel.pathInfo
        timeLabel.text = moveModel.estimateTimeInfo
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
        addSubview(pathLabel)
        addSubview(timeLabel)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            pathLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            pathLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            pathLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
            pathLabel.trailingAnchor.constraint(lessThanOrEqualTo: timeLabel.leadingAnchor, constant: -16),
            
            timeLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            timeLabel.centerYAnchor.constraint(equalTo: pathLabel.centerYAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

