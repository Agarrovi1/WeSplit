//
//  SwiftUIView.swift
//  WeSplit
//
//  Created by Angela Garrovillas on 11/13/20.
//  Copyright © 2020 Angela Garrovillas. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var name = ""
    var body: some View {
        Form {
            TextField("Enter your name here", text: $name )
            //binding state with $, kinda like get set between a view and a property
            Text("Your name is \(name)")
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
