//
//  MoveDetailModuleBuilder.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import UIKit

final class MoveDetailModuleBuilder {
    func createModule(withData data: MoveDetailData) -> MoveDetailViewController {
        let moveViewController = MoveDetailViewController(moveDetailData: data)

        return moveViewController
    }
}

