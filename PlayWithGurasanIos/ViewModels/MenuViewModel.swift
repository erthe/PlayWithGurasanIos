//
//  FollowingUserStore.swift
//  PlayWithGurasanIos
//
//  Created by Erthe on 2019/09/30.
//  Copyright © 2019 Erthe. All rights reserved.
//

import Foundation
import Combine

class MenuViewModel: ObservableObject {
    @Published var menuList: [MenuList] = []

    init() {
        load()
    }

    func load() {
        let url = URL(string: "http://aochd.jp/api/menu/")!
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                let menu: Menu = try! JSONDecoder().decode(Menu.self, from: data!)
                self.menuList = menu.menus
            }
        }.resume()
    }
}
