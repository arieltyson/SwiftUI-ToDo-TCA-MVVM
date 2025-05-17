//
//  TaskFeature.swift
//  TCA-MVVM-Todolist
//
//  Created by Ariel Tyson on 16/5/25.
//

import ComposableArchitecture
import Foundation

@Reducer
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
        case tasksLoaded([Task])
    }

    @Dependency(\.taskUseCase) var useCase

    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .onAppear:
                return .run { send in
                    let tasks = await useCase.fetchTasks()
                    await send(.tasksLoaded(tasks))
                }

            case .setNewTitle(let title):
                state.newTitle = title
                return .none

            case .addButtonTapped:
                guard !state.newTitle.isEmpty else { return .none }
                let title = state.newTitle
                state.newTitle = ""
                return .run { send in
                    await useCase.addTask(title: title)
                    let tasks = await useCase.fetchTasks()
                    await send(.tasksLoaded(tasks))
                }

            case .toggleComplete(let id):
                return .run { send in
                    await useCase.toggleCompletion(id: id)
                    let tasks = await useCase.fetchTasks()
                    await send(.tasksLoaded(tasks))
                }

            case .tasksLoaded(let tasks):
                state.tasks = tasks
                return .none
            }
        }
    }
}
