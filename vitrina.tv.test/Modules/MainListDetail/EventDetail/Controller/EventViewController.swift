//
//  EventViewController.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import UIKit

final class EventViewController: UIViewController {

    private lazy var eventDetailView = EventDetailView()

    override func loadView() {
        view = eventDetailView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationBar()
    }

    private func setupNavigationBar() {
        title = Strings.main_detail_event_title()
    }

    convenience init(eventDetailData: EventDetailData) {
        self.init()
        self.eventDetailView.setData(eventDetailData: eventDetailData)
    }

    private init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
