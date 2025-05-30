//
//  Task.swift
//  TCA-MVVM-Todolist
//
//  Created by Ariel Tyson on 16/5/25.
//

import Foundation

public struct Task: Identifiable, Equatable {
    public let id: UUID
    public var title: String
    public var isComplete: Bool

    public init(id: UUID = .init(), title: String, isComplete: Bool = false) {
        self.id = id
        self.title = title
        self.isComplete = isComplete
    }
}
