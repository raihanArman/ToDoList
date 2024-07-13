//
//  User.swift
//  ToDoList
//
//  Created by Raihan Arman on 07/07/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
