//
//  StreamView.swift
//  PlayWithGurasanIos
//
//  Created by Erthe on 2020/06/23.
//  Copyright © 2020 Erthe. All rights reserved.
//

import SwiftUI

struct StreamView: View {
    @ObservedObject var streamViewModel = StreamViewModel()

    var body: some View {
        VStack {
            List(streamViewModel.stream.youtube, id:\.self) { (stream) in
                StreamRow(stream: stream)
            }
            List(streamViewModel.stream.twitch, id:\.self) { (stream) in
                StreamRow(stream: stream)
            }
            List(streamViewModel.stream.nico, id:\.self) { (stream) in
                StreamRow(stream: stream)
            }
            List(streamViewModel.stream.cavetube, id:\.self) { (stream) in
                StreamRow(stream: stream)
            }
        }
    }
}

struct StreamRow: View {
    var stream: StreamList

    var body: some View {
        VStack {
            
            HStack {
                Text(stream.name)
                Text(stream.title)
                Text(stream.viewer)
            }
            Button(action: {
                 if let url = URL(string: self.stream.url) {
                     UIApplication.shared.open(url)
                 }
             }) {
                 Text(self.stream.url)
            }
        }
        
    }
}
