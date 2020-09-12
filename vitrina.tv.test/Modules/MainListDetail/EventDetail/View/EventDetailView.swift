//
//  EventDetailView.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import UIKit

final class EventDetailView: View {
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

    func setData(eventDetailData: EventDetailData) {
        timeIntervalLabel.text = eventDetailData.timeIntervalInfo
        nameLabel.text = eventDetailData.name
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
        addSubview(timeIntervalLabel)
        addSubview(nameLabel)
    }

    override func setupConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            nameLabel.bottomAnchor.constraint(equalTo: centerYAnchor),

            timeIntervalLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            timeIntervalLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8)
        ])
    }
}
