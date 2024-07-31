//
//  ContentView.swift
//  Personal Finance and Budgeting App
//
//  Created by Hongbo Wei on 03/07/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ExpenseViewModel()

    var body: some View {
        DashboardView()
            .environmentObject(viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
