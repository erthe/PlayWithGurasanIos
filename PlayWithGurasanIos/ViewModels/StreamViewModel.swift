//
//  StreamViewModel.swift
//  PlayWithGurasanIos
//
//  Created by Erthe on 2020/06/23.
//  Copyright © 2020 Erthe. All rights reserved.
//

import Foundation

class StreamViewModel: ObservableObject {
    @Published var stream: Stream = Stream.init()

    init() {
        load()
    }

    func load() {
        let url = URL(string: "http://aochd.jp/api/stream/")!
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                let stream: Stream = try! JSONDecoder().decode(Stream.self, from: data!)
                self.stream = stream
            }
        }.resume()
    }
}
