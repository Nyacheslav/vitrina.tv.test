//
//  TableCellModel.swift
//  vitrina.tv.test
//
//  Created by Vyacheslav Vakulenko on 12.09.2020.
//  Copyright © 2020 nyacheslav. All rights reserved.
//

protocol TableCellModel {
    var onSelectAction: (() -> ())? { get set }
}
