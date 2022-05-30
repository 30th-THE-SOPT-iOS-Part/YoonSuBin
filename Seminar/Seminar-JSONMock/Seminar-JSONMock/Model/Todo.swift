//
//  Todo.swift
//  Seminar-JSONMock
//
//  Created by subinyoon on 2022/05/28.
//

import Foundation

struct Todo: Codable {
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}
