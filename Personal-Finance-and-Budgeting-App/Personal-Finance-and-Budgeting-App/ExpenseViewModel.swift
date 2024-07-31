//
//  ExpenseViewModel.swift
//  Personal Finance and Budgeting App
//
//  Created by Hongbo Wei on 03/07/2024.
//

import SwiftUI
import Combine

class ExpenseViewModel: ObservableObject {
    @Published var expenses: [Expense] = []
    @Published var budgets: [Budget] = []

    // Add expense method
    func addExpense(amount: Double, category: String, date: Date, notes: String?) {
        let newExpense = Expense(amount: amount, category: category, date: date, notes: notes)
        expenses.append(newExpense)
    }

    // Total expenses calculation
    func totalExpenses() -> Double {
        return expenses.reduce(0) { $0 + $1.amount }
    }
}
