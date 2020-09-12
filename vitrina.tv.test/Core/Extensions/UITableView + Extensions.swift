//
//  UITableView + Extensions.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import UIKit

extension UITableView {
    func registerTableCell(cellClass: TableViewCell.Type,
                           withModel model: TableCellModel.Type) {
        let cellIdentifier = String(describing: model)
        register(cellClass, forCellReuseIdentifier: cellIdentifier)
    }

    func dequeueReusableTableCell(withModel model: TableCellModel,
                                  forIndexPath indexPath: IndexPath) -> TableViewCell {
        let cellIdentifier = String(describing: type(of: model.self))
        guard let tableCell = dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TableViewCell else {
            fatalError("Couldn't get cell with \(cellIdentifier) model")
        }

        return tableCell
    }
}
