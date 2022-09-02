//
//  MemoCell.swift
//  MEMOproj (iOS)
//
//  Created by HYEON on 2022/09/02.
//

import SwiftUI

struct ExtractedView: View {
    @ObservedObject var memo: Memo
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(memo.content)
                .font(.body)
                .lineLimit(1)
            Text(memo.insertDate, style: .date)
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}

struct MemoCell_Previews: PreviewProvider {
    static var previews: some View {
        MemoCell(memo: memo(content: "Test"))
    }
}
