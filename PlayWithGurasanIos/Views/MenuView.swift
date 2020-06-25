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
        NavigationView {
            List(menuViewModel.menuList, id:\.self) { (menu) in
                MenuRow(menu: menu)
            }.navigationBarTitle("guraさんと遊ぼう")
        }
    }
}

struct MenuRow: View {
    var menu: MenuList
    private let defaultTag: Int = 8888
    @State var destination: AnyView? = nil
    @State var tag: Int? = nil

    var body: some View {
        
        VStack(alignment: .leading){
            Button(action: {
                if (self.menu.url == "/api/uo_aoe_log/") {
                    self.destination = AnyView(LogView())
                }
                if (self.menu.url == "/api/ramen/") {
                    self.destination = AnyView(RamenView())
                }
                if (self.menu.url == "/api/stream/") {
                    self.destination = AnyView(StreamView())
                }
                self.tag = self.defaultTag
            }) {
                Text(self.menu.title)
            }
            NavigationLink(destination: destination, tag: defaultTag, selection: $tag) {
                EmptyView()
            }
        }
    }
}
