//
//  ContentView.swift
//  WeSplit
//
//  Created by Angela Garrovillas on 11/13/20.
//  Copyright © 2020 Angela Garrovillas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //@State is kinda like a mutable property for this struct
    @State private var tapCount = 0
    var body: some View {
        /*
        NavigationView { //adds nav bar at top
            Form {
                //There can only be 10 child per parent
                Group {
                    Text("Hello, World!")
                    Text("Hello, World!")
                }
                //adds new section visually
                Section {
                    Text("New Section")
                    Text("Hello, World!")
                    Text("Hello, World!")
                }
            }
                //.navigationBarTitle("SwiftUI")
                .navigationBarTitle(Text("SwiftUI"), displayMode: .inline)
        }
        */
        Button("TapCount: \(tapCount)") {
            self.tapCount += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
