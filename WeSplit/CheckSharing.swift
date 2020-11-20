//
//  CheckSharing.swift
//  WeSplit
//
//  Created by Angela Garrovillas on 11/13/20.
//  Copyright © 2020 Angela Garrovillas. All rights reserved.
//

import SwiftUI

struct CheckSharing: View {
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    
    let tipPercentages = [10,15,20,25,0]
    
    private var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkAmount) ?? 0
        
        let tipAmount = orderAmount / 100 * tipSelection
        let grandTotal = orderAmount + tipAmount
        let amountPerPerson = grandTotal / peopleCount
        return amountPerPerson
    }
    private var grandTotal: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkAmount) ?? 0
        
        let tipAmount = orderAmount / 100 * tipSelection
        let grandTotal = orderAmount + tipAmount
        
        return grandTotal
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", text: $checkAmount)
                        .keyboardType(.decimalPad)
                    Picker("Number of People",selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                Section(header: Text("How much tip do you want to leave?")) {
                    Picker("Tip Percentage", selection: $tipPercentage) {
                        ForEach(0..<tipPercentages.count) {
                            Text("\(self.tipPercentages[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section {
                    
                    Text("Grand Total: $\(grandTotal, specifier: "%.2f")")
                }
                
                Section(header: Text("Each person pays:")) {
                    Text("$\(totalPerPerson, specifier: "%.2f")")
                }
            .navigationBarTitle("WeSpit")
            }
        }
    }
}

struct CheckSharing_Previews: PreviewProvider {
    static var previews: some View {
        CheckSharing()
    }
}
