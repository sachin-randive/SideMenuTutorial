//
//  ContentView.swift
//  SideMenuTutorial
//
//  Created by Sachin Randive on 10/03/26.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @State private var selectedTag = 0
    var body: some View {
        NavigationStack {
            ZStack {
                TabView(selection: $selectedTag) {
                    Text("Dashboard")
                        .tag(0)
                    
                    Text("Performance")
                        .tag(1)
                    
                    Text("Profile")
                        .tag(2)
                    
                    Text("Search")
                        .tag(3)
                    
                    Text("Notification")
                        .tag(4)
                }
                
                SlideMenuView(isShowing: $showMenu, selectedTab: $selectedTag)
            }
            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        showMenu.toggle()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
