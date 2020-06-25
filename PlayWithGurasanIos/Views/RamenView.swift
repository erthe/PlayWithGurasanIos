//
//  Ramen.swift
//  PlayWithGurasanIos
//
//  Created by Erthe on 2020/06/08.
//  Copyright © 2020 Erthe. All rights reserved.
//

import SwiftUI

struct RamenView: View {
    @ObservedObject var ramenViewModel = RamenViewModel()

    var body: some View {
        RamenRow(ramen: ramenViewModel.ramen)
    }
}

struct RamenRow:View {
    var ramen: Ramen
    
    var body: some View {
        VStack {
            Text(ramen.message)
            Button(action: {
                if let url = URL(string: self.ramen.url) {
                    UIApplication.shared.open(url)
                }
            }) {
                Text(self.ramen.url)
           }
        }
    }
}
