//
//  NoticeDetailView.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import UIKit

final class NoticeDetailView: View {
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
    
    func setData(noticeDetailData: NoticeDetailData) {
        flightDateLabel.text = noticeDetailData.flightDateInfo
        gateLabel.text = noticeDetailData.gateInfo
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
        addSubview(gateLabel)
        addSubview(flightDateLabel)
    }
    
    override func setupConstraints() {
        NSLayoutConstraint.activate([
            gateLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            gateLabel.bottomAnchor.constraint(equalTo: centerYAnchor),

            flightDateLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            flightDateLabel.topAnchor.constraint(equalTo: gateLabel.bottomAnchor, constant: 8)
        ])
    }
}


