//
//  LogView.swift
//  PlayWithGurasanIos
//
//  Created by Erthe on 2020/06/04.
//  Copyright © 2020 Erthe. All rights reserved.
//

import SwiftUI

struct LogView: View {
    @ObservedObject var logViewModel = LogViewModel()

    var body: some View {
        List(logViewModel.logList, id:\.self) { (log) in
            LogRow(log: log)
        }
    }
}

struct LogRow: View {
    var log: LogList

    var body: some View {
        Text(log.line)
    }
}
