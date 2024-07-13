//
//  ToDoListViewModel.swift
//  ToDoList
//
//  Created by Raihan Arman on 07/07/24.
//

import Foundation
import FirebaseFirestore

class ToDoListViewModel: ObservableObject {
    @Published var isShowBottomSheet = false
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
    
}
