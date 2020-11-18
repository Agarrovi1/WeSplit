//
//  LoopView.swift
//  WeSplit
//
//  Created by Angela Garrovillas on 11/13/20.
//  Copyright © 2020 Angela Garrovillas. All rights reserved.
//

import SwiftUI

struct LoopView: View {
    let students = ["Harry","Hermine","Ron"]
    @State private var selectedStudent = "Harry"
    var body: some View {
//        Form {
//            ForEach(0..<100) {
//                Text("Row \($0)")
//            }
//        }
        
        //        Form {
        //            ForEach(0..<100) { number in
        //                Text("Row \(number)")
        //            }
        //        }
        Picker("Select your student", selection: $selectedStudent) {
            ForEach(0..<students.count) {
                Text(self.students[$0])
            }
        }
    }
}

struct LoopView_Previews: PreviewProvider {
    static var previews: some View {
        LoopView()
    }
}
