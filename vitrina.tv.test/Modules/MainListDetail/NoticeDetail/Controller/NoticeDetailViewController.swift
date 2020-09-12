//
//  NoticeDetailViewController.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import UIKit

final class NoticeDetailViewController: UIViewController {

    private lazy var noticeDetailView = NoticeDetailView()

    override func loadView() {
        view = noticeDetailView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationBar()
    }

    private func setupNavigationBar() {
        title = Strings.main_detail_notice_title()
    }

    convenience init(noticeDetailData: NoticeDetailData) {
        self.init()
        self.noticeDetailView.setData(noticeDetailData: noticeDetailData)
    }

    private init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
