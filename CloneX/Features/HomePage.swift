//
//  Home.swift
//  CloneX
//
//  Created by Tsubasa on 2024/10/27.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        TabView {
            Text("ホーム画面")
                .tabItem {
                    Image(systemName: "house.fill")
                }
            
            Text("検索画面")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            Text("お知らせ画面")
                .tabItem {
                    Image(systemName: "lightbulb")
                }
            
            Text("メッセージ")
                .tabItem {
                    Image(systemName: "envelope")
                }
        }
    }
}

#Preview {
    HomePage()
}
