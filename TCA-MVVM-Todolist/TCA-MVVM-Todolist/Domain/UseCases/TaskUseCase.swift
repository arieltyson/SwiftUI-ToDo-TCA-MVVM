//
//  TaskUseCaseProtocol.swift
//  TCA-MVVM-Todolist
//
//  Created by Ariel Tyson on 16/5/25.
//

import Foundation

public protocol TaskUseCaseProtocol {
    func fetchTasks() async -> [Task]
    func addTask(title: String) async
    func toggleCompletion(id: UUID) async
}

public class TaskUseCase: TaskUseCaseProtocol {
    private let repository: TaskRepositoryProtocol

    public init(repository: TaskRepositoryProtocol) {
        self.repository = repository
    }

    public func fetchTasks() async -> [Task] {
        repository.getAll()
    }

    public func addTask(title: String) async {
        let task = Task(title: title)
        repository.save(task)
    }

    public func toggleCompletion(id: UUID) async {
        guard var task = repository.get(by: id) else { return }
        task.isComplete.toggle()
        repository.save(task)
    }
}
