//
//  ExpenseModel.swift
//  Personal Finance and Budgeting App
//
//  Created by Hongbo Wei on 03/07/2024.
//

import Foundation

struct Expense: Identifiable {
    let id = UUID()
    let amount: Double
    let category: String
    let date: Date
    let notes: String?
}
