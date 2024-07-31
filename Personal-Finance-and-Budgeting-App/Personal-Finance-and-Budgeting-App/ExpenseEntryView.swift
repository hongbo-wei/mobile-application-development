//
//  ExpenseEntryView.swift
//  Personal Finance and Budgeting App
//
//  Created by Hongbo Wei on 03/07/2024.
//

import SwiftUI

struct ExpenseEntryView: View {
    @State private var amount: String = ""
    @State private var category: String = ""
    @State private var date: Date = Date()
    @State private var notes: String = ""
    @EnvironmentObject var viewModel: ExpenseViewModel
    
    let categories = ["Food", "Transportation", "Entertainment", "Utilities", "Others"]

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Expense Details")) {
                    TextField("Amount", text: $amount)
                        .keyboardType(.decimalPad)
                        .padding()
                    
                    Picker("Category", selection: $category) {
                        ForEach(categories, id: \.self) {
                            Text($0)
                        }
                    }
                    .padding()
                    
                    DatePicker("Date", selection: $date, displayedComponents: .date)
                        .padding()
                    
                    TextField("Notes", text: $notes)
                        .padding()
                }
                
                Button(action: {
                    if let amount = Double(amount) {
                        viewModel.addExpense(amount: amount, category: category, date: date, notes: notes)
                        self.amount = ""
                        self.category = ""
                        self.date = Date()
                        self.notes = ""
                    }
                }) {
                    Text("Add Expense")
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                }
            }
            .navigationBarTitle("Add Expense", displayMode: .inline)
        }
    }
}
