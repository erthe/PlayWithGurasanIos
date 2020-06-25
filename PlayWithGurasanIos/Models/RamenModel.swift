//
//  RamenModel.swift
//  PlayWithGurasanIos
//
//  Created by Erthe on 2020/06/08.
//  Copyright © 2020 Erthe. All rights reserved.
//

struct Ramen: Decodable {
    var title: String = ""
    var return_status: Int = 404
    var message: String = ""
    var url: String = ""
}
