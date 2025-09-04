//
//  TabBarView.swift
//  socialPrivate
//
//  Created by arefdeveloper on 04/09/25.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab){
            Text("Feed View")
                .tabItem {
                    Image(systemName: "house.fill")
                    
                }
            
                .onAppear{selectedTab = 0}
                .tag(0)
            
            
            Text("Explore")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .onAppear{selectedTab = 1}
                .tag(1)
            Text("Upload Thread")
                .tabItem {
                    Image(systemName: "plus")
                }
                .onAppear{selectedTab = 2}
                .tag(2)
            Text("Activity")
                .tabItem {
                    Image(systemName: "heart")
                }
                .onAppear{selectedTab = 3}
                .tag(3)
            Text("Profile")
                .tabItem {
                    Image(systemName: "person")
                }
                .onAppear{selectedTab = 4}
                .tag(4)
            
        }
    }
}

#Preview {
    TabBarView()
}
