//
//  MainListView + UITableViewDelegate.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

import UIKit

extension MainListView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        responderDelegate?.onDidSelectRow(atIndexPath: indexPath)
    }
}
