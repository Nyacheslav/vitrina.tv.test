//
//  MainListModuleBuilder.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import UIKit

final class MainListModuleBuilder {
    func createModule(withNewNavigationController: Bool = false) -> UIViewController {
        let mainListDataSource = MainListRandomDataSource()

        let mainListViewController = MainListViewController(dataSource: mainListDataSource)
        let ouputController: UIViewController

        if withNewNavigationController {
            ouputController = UINavigationController(rootViewController: mainListViewController)
        } else {
            ouputController = mainListViewController
        }

        return ouputController
    }
}
