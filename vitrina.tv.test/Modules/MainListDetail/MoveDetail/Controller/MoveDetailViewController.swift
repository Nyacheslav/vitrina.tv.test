//
//  MoveDetailViewController.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import UIKit

final class MoveDetailViewController: UIViewController {

    private lazy var moveDetailView = MoveDetailView()

    override func loadView() {
        view = moveDetailView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationBar()
    }

    private func setupNavigationBar() {
        title = Strings.main_detail_move_title()
    }

    convenience init(moveDetailData: MoveDetailData) {
        self.init()
        self.moveDetailView.setData(moveDetailData: moveDetailData)
    }

    private init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
