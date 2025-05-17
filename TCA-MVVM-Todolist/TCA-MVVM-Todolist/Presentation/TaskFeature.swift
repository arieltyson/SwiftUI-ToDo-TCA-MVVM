//
//  TaskFeature.swift
//  TCA-MVVM-Todolist
//
//  Created by Ariel Tyson on 16/5/25.
//

import ComposableArchitecture
import Foundation

public struct TaskFeature {
    public struct State: Equatable {
        public var tasks: [Task] = []
        public var newTitle: String = ""
        public init() {}
    }

    public enum Action: Equatable {
        case onAppear
        case setNewTitle(String)
        case addButtonTapped
        case toggleComplete(id: UUID)
    }

    public struct Environment {
        public var mainQueue: AnySchedulerOf<DispatchQueue>
        public var useCase: TaskUseCaseProtocol
    }

    public static let reducer = Reducer<State, Action, Environment> {
        state,
        action,
        env in
        switch action {
        case .onAppear:
            state.tasks = env.useCase.fetchTasks()
            return .none

        case let .setNewTitle(title):
            state.newTitle = title
            return .none

        case .addButtonTapped:
            guard !state.newTitle.isEmpty else { return .none }
            env.useCase.addTask(title: state.newTitle)
            state.tasks = env.useCase.fetchTasks()
            state.newTitle = ""
            return .none

        case let .toggleComplete(id):
            env.useCase.toggleCompletion(id: id)
            state.tasks = env.useCase.fetchTasks()
            return .none
        }
    }
}
