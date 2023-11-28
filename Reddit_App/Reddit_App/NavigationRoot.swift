//
//  ContentView.swift
//  Reddit_App
//
//  Created by Jonathan Barta on 11/27/23.
//
import SwiftUI

struct NavigationRoot: View {
    @State private var showingSheet = false
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            CommunitiesView()
                .tabItem {
                    Label("Communities", systemImage: "person.2.circle")
                }
            PlusTabView(showingSheet: $showingSheet)
                .tabItem {
                    Label("Create", systemImage: "plus")
                }
            ChatView()
                .tabItem {
                    Label("Chat", systemImage: "ellipsis.message")
                }
            InboxView()
                .tabItem {
                    Label("Inbox", systemImage: "bell")
                }
        }
        .sheet(isPresented: $showingSheet) {
            CreateView()
        }
    }
}

struct PlusTabView: View {
    @Binding var showingSheet: Bool
    
    var body: some View {
        Button(action: {
            showingSheet = true // Set showingSheet to true directly to open the sheet
        }) {
            Text("")
        }
        .onAppear {
            showingSheet = true // Automatically open the sheet when PlusTabView appears
        }
    }
}

// Your other view structs remain unchanged...

#Preview {
    NavigationRoot()
}

