//
//  TaskUseCaseProtocol.swift
//  TCA-MVVM-Todolist
//
//  Created by Ariel Tyson on 16/5/25.
//

import Foundation

public protocol TaskUseCaseProtocol {
    func fetchTasks() -> [Task]
    func addTask(title: String)
    func toggleCompletion(id: UUID)
}

public class TaskUseCase: TaskUseCaseProtocol {
    private let repository: TaskRepositoryProtocol

    public init(repository: TaskRepositoryProtocol) {
        self.repository = repository
    }

    public func fetchTasks() -> [Task] {
        repository.getAll()
    }

    public func addTask(title: String) {
        let task = Task(title: title)
        repository.save(task)
    }

    public func toggleCompletion(id: UUID) {
        guard var task = repository.get(by: id) else { return }
        task.isComplete.toggle()
        repository.save(task)
    }
}
