//
//  TaskUseCaseKey.swift
//  TCA-MVVM-Todolist
//
//  Created by Ariel Tyson on 16/5/25.
//


import ComposableArchitecture

private enum TaskUseCaseKey: DependencyKey {
    static let liveValue: TaskUseCaseProtocol = TaskUseCase(repository: InMemoryTaskRepository())
}

extension DependencyValues {
    var taskUseCase: TaskUseCaseProtocol {
        get { self[TaskUseCaseKey.self] }
        set { self[TaskUseCaseKey.self] = newValue }
    }
}
