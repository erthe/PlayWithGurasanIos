//
//  RamenViewModel.swift
//  PlayWithGurasanIos
//
//  Created by Erthe on 2020/06/08.
//  Copyright © 2020 Erthe. All rights reserved.
//

import Foundation

class RamenViewModel: ObservableObject {
    @Published var ramen: Ramen = Ramen.init()

    init() {
        load()
    }

    func load() {
        let url = URL(string: "http://aochd.jp/api/ramen/")!
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                let ramen: Ramen = try! JSONDecoder().decode(Ramen.self, from: data!)
                self.ramen = ramen
            }
        }.resume()
    }
}
