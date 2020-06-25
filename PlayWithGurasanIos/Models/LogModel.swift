//
//  LogModel.swift
//  PlayWithGurasanIos
//
//  Created by Erthe on 2020/06/04.
//  Copyright © 2020 Erthe. All rights reserved.
//

struct Log: Decodable {
    var title: String
    var return_status: Int
    var file_name: String
    var lines: [LogList]
}

struct LogList: Decodable, Hashable {
    var line: String
}
