//
//  File.swift
//  PlayWithGurasanIos
//
//  Created by Erthe on 2020/06/23.
//  Copyright © 2020 Erthe. All rights reserved.
//

import Foundation

struct Stream: Decodable {
    var title: String = ""
    var return_status: Int = 404
    var twitch: [StreamList] = []
    var youtube: [StreamList] = []
    var cavetube: [StreamList] = []
    var nico: [StreamList] = []
}

struct StreamList: Decodable, Hashable {
    var title: String = ""
    var name: String = ""
    var url: String = ""
    var viewer: String = ""
    var stream_id: String = ""
}
