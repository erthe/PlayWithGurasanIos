//
//  LogViewModel.swift
//  PlayWithGurasanIos
//
//  Created by Erthe on 2020/06/04.
//  Copyright © 2020 Erthe. All rights reserved.
//

import Foundation

class LogViewModel: ObservableObject {
    @Published var logList: [LogList] = []

    init() {
        load()
    }

    func load() {
        let url = URL(string: "http://aochd.jp/api/uo_aoe_log/")!
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                let log: Log = try! JSONDecoder().decode(Log.self, from: data!)
                self.logList = log.lines
            }
        }.resume()
    }
}
