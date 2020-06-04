//
//  Menu.swift
//  PlayWithGurasanIos
//
//  Created by Erthe on 2019/09/30.
//  Copyright © 2019 Erthe. All rights reserved.
//

import Foundation

struct Menu: Decodable, Identifiable {
    var id: Int
    var title: String
    var return_status: Int
    var menu_version: Float
    var menus: [MenuList]
}

struct MenuList: Decodable, Identifiable {
    var id:Int
    var url: String
    var title: String
}
