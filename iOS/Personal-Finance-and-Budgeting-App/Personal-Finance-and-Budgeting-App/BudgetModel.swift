//
//  BudgetModel.swift
//  Personal Finance and Budgeting App
//
//  Created by Hongbo Wei on 03/07/2024.
//

import Foundation

struct Budget: Identifiable {
    let id = UUID()
    let category: String
    let amount: Double
    let timeframe: TimeInterval // Monthly or Weekly
}
