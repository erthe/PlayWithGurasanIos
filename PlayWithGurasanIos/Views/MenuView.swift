//
//  MenuView.swift
//  PlayWithGurasanIos
//
//  Created by Erthe on 2019/09/28.
//  Copyright © 2019 Erthe. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    @ObservedObject var menuViewModel = MenuViewModel()

    var body: some View {
        List(menuViewModel.menuList) { (menu) in
            MenuRow(menu: menu)
        }
    }
}

struct MenuRow: View {
    var menu: MenuList

    var body: some View {
        Text(menu.title)
    }
}
