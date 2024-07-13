//
//  TLButton.swift
//  ToDoList
//
//  Created by Raihan Arman on 13/07/24.
//

import SwiftUI

struct TLButton: View {
    let textButton: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                Text(textButton)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(textButton: "Value", backgroundColor: .pink) {
        
    }
}
