//
//  View.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import UIKit

class View: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)

        commonInit()
    }
    

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func commonInit() {
        setupAppearance()
        setupSubviews()
        setupConstraints()
    }

    open func setupAppearance() {
        backgroundColor = .white
    }

    open func setupSubviews() {

    }

    open func setupConstraints() {

    }
}
