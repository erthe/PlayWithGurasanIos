//
//  Menu.swift
//  PlayWithGurasanIos
//
//  Created by Erthe on 2019/09/30.
//  Copyright © 2019 Erthe. All rights reserved.
//

struct Menu: Decodable {
    var title: String
    var return_status: Int
    var menu_version: Float
    var menus: [MenuList]
}

struct MenuList: Decodable, Hashable {
    var url: String
    var title: String
}
