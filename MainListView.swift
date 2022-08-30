//
//  MainListView.swift
//  MEMOproj
//
//  Created by HYEON on 2022/08/29.
//

import SwiftUI

struct MainListView: View {
    @EnvironmentObject var store: Memo
    
    var body: some View {
        List(store.list) { memo in
            Text(memo.content)
        }
        .navigationTitle("내 메모")
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MainListView()
                .environmentObject(MemoStore())
        }
    }
}
