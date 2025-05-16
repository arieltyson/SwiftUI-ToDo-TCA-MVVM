//
//  TCA_MVVM_TodolistApp.swift
//  TCA-MVVM-Todolist
//
//  Created by Ariel Tyson on 12/5/25.
//

/*
Simple ToDo App demonstrating The Composable Architecture (TCA) + SwiftUI + MVVM + Clean Architecture + Model-Driven Development

Layers:
- Domain: Task entity, UseCases
- Data: InMemory repository
- Presentation: TCA Feature (State, Action, Environment, Reducer), SwiftUI Views
*/

import SwiftUI

@main
struct TCA_MVVM_TodolistApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
