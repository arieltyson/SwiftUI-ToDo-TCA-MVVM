//
//  TaskRepositoryProtocol.swift
//  TCA-MVVM-Todolist
//
//  Created by Ariel Tyson on 16/5/25.
//

import Foundation

public protocol TaskRepositoryProtocol {
    func getAll() -> [Task]
    func get(by id: UUID) -> Task?
    func save(_ task: Task)
}

public class InMemoryTaskRepository: TaskRepositoryProtocol {
    private var store: [UUID: Task] = [:]

    public init(initial: [Task] = []) {
        initial.forEach { store[$0.id] = $0 }
    }

    public func getAll() -> [Task] {
        Array(store.values)
    }

    public func get(by id: UUID) -> Task? {
        store[id]
    }

    public func save(_ task: Task) {
        store[task.id] = task
    }
}
