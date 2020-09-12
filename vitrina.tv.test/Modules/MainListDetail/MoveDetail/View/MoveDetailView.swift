//
//  MoveDetailView.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import UIKit

final class MoveDetailView: View {
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

    func setData(moveDetailData: MoveDetailData) {
        pathLabel.text = moveDetailData.pathInfo
        timeLabel.text = moveDetailData.estimateTimeInfo
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
    }

    override func setupSubviews() {
        addSubview(pathLabel)
        addSubview(timeLabel)
    }

    override func setupConstraints() {
        NSLayoutConstraint.activate([
            pathLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            pathLabel.bottomAnchor.constraint(equalTo: centerYAnchor),

            timeLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            timeLabel.topAnchor.constraint(equalTo: pathLabel.bottomAnchor, constant: 8)
        ])
    }
}

