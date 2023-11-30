//
//  ContentView.swift
//  Reddit_App
//
//  Created by Jonathan Barta on 11/27/23.
//
import SwiftUI

struct NavigationRoot: View {
    @State private var showingSheet = false
    @State private var selection = 0
    @State private var createViewSheetItem: IdentifiableInt? = nil
    
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(0)
            
            CommunitiesView()
                .tabItem {
                    Label("Communities", systemImage: "person.2.circle")
                }
            
            //PlusTabView(showingSheet: $showingSheet)
            CreateView(showingSheet: $showingSheet, selection: $selection)
                .tabItem {
                    Label("Create", systemImage: "plus")
                }
                .tag(1)
                .sheet(isPresented: $showingSheet) {
                    CreateView(showingSheet: $showingSheet, selection: $selection)
                }
                .sheet(item: $createViewSheetItem) { item in
                    CreateView(showingSheet: $showingSheet, selection: $selection)
                        .withSheetTransition()
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
            CreateView(showingSheet: $showingSheet,selection: $selection )
            EmptyView()
                .onAppear {
                    createViewSheetItem = nil
                }
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

struct IdentifiableInt: Identifiable {
    let id: Int
}
// Your other view structs remain unchanged...

#Preview {
    NavigationRoot()
}

