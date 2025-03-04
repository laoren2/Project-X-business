//
//  NaviView.swift
//  sportsx_business
//
//  Created by 任杰 on 2025/3/4.
//

import SwiftUI

struct NaviView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            PlaceholderView(title: "场地")
                .tabItem {
                    Image(systemName: "sportscourt")
                    Text("场地")
                }
                .tag(0)
            
            PlaceholderView(title: "订单")
                .tabItem {
                    Image(systemName: "tablecells")
                    Text("订单")
                }
                .tag(1)
            
            PlaceholderView(title: "消息")
                .tabItem {
                    Image(systemName: "message")
                    Text("消息")
                }
                .tag(2)
            
            PlaceholderView(title: "我的")
                .tabItem {
                    Image(systemName: "person")
                    Text("我的")
                }
                .tag(3)
        }
    }
}

struct PlaceholderView: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding()
    }
}

#Preview {
    NaviView()
}
