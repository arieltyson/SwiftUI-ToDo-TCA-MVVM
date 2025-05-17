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
import ComposableArchitecture

@main
struct TCA_MVVM_TodolistApp: App {
    var body: some Scene {
        WindowGroup {
            let repository = InMemoryTaskRepository()
            let useCase = TaskUseCase(repository: repository)
            let store = Store(
                initialState: TaskFeature.State(),
                reducer: TaskFeature.reducer,
                environment: TaskFeature.Environment(
                    mainQueue: DispatchQueue.main.eraseToAnyScheduler(),
                    useCase: useCase
                )
            )
            TaskListView(store: store)
        }
    }
}

struct TaskListView: View {
    let store: Store<TaskFeature.State, TaskFeature.Action>

    var body: some View {
        WithViewStore(self.store) { viewStore in
            NavigationView {
                VStack {
                    HStack {
                        TextField("New Task", text: viewStore.binding(
                            get: \ .newTitle,
                            send: TaskFeature.Action.setNewTitle
                        ))
                        Button("Add") { viewStore.send(.addButtonTapped) }
                    }.padding()

                    List {
                        ForEach(viewStore.tasks) { task in
                            HStack {
                                Text(task.title)
                                Spacer()
                                Button(action: { viewStore.send(.toggleComplete(id: task.id)) }) {
                                    Image(systemName: task.isComplete ? "checkmark.circle.fill" : "circle")
                                }
                            }
                        }
                    }
                }
                .navigationTitle("ToDo Demo")
                .onAppear { viewStore.send(.onAppear) }
            }
        }
    }
}
