//
//  MainListViewController + DataSource.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import UIKit

extension MainListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellModels.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellModel = cellModels[indexPath.row]
        let tableCell = tableView.dequeueReusableTableCell(withModel: cellModel, forIndexPath: indexPath)
        tableCell.configure(withModel: cellModel)

        return tableCell
    }
}
