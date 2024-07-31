//
//  DashboardView.swift
//  Personal Finance and Budgeting App
//
//  Created by Hongbo Wei on 03/07/2024.
//

import SwiftUI

struct DashboardView: View {
    @EnvironmentObject var viewModel: ExpenseViewModel

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Total Expenses: \(viewModel.totalExpenses(), specifier: "%.2f")")
                    .font(.title)
                    .padding()
                
                List {
                    ForEach(viewModel.expenses) { expense in
                        HStack {
                            Text(expense.category)
                                .font(.headline)
                            Spacer()
                            Text("\(expense.amount, specifier: "%.2f")")
                        }
                    }
                }
                
                Spacer()
                
                NavigationLink(destination: ExpenseEntryView()) {
                    Text("Add Expense")
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                }
            }
            .navigationBarTitle("Dashboard")
        }
    }
}
