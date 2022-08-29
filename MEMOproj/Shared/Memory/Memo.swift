//
//  Memo.swift
//  MEMOproj
//
//  Created by HYEON on 2022/08/29.
//

import Foundation
import SwiftUI

class Memo: Identifiable, ObservedObject {
    let id: UUID
    @Published var content: String
    let insertDate: Date
    
    init(content: String, insertDate: Date = Date.now) {
    id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
