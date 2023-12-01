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
    
    @State private var samsSelection = 0
    @State private var samsShowingSheet = false
    @State private var previousTab: Int?
    
    var body: some View {
        TabView(selection: $samsSelection) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(0)
            
            CommunitiesView()
                .tabItem {
                    Label("Communities", systemImage: "person.2.circle")
                }
                .tag(1)
            
            //PlusTabView(showingSheet: $showingSheet)
//            CreateView(showingSheet: $showingSheet, selection: $selection)
            Text("Not create view")
                .tabItem {
                    Label("Create", systemImage: "plus")
                }
                .tag(2)
//                .sheet(isPresented: $showingSheet) {
//                    CreateView(showingSheet: $showingSheet, selection: $selection)
//                }
//                .sheet(item: $createViewSheetItem) { item in
//                    CreateView(showingSheet: $showingSheet, selection: $selection)
//                        .withSheetTransition()
//                }
            
            ChatView()
                .tabItem {
                    Label("Chat", systemImage: "ellipsis.message")
                }
                .tag(3)
            
            InboxView()
                .tabItem {
                    Label("Inbox", systemImage: "bell")
                }
                .tag(4)
        }
        .onChange(of: samsSelection) { oldValue, newValue in
            if newValue == 2 {
                samsShowingSheet = true
                previousTab = oldValue
            }
        }
        .fullScreenCover(isPresented: $samsShowingSheet) {
            CreateView(showingSheet: $showingSheet, selection: $samsSelection, didDismissCreateView: didDismissCreateView)
        }
//        .sheet(isPresented: $showingSheet) {
//            CreateView(showingSheet: $showingSheet,selection: $selection )
//            EmptyView()
//                .onAppear {
//                    createViewSheetItem = nil
//                }
//        }
    }
    
    private func didDismissCreateView() {
        samsSelection = previousTab ?? 0
    }
}


struct IdentifiableInt: Identifiable {
    let id: Int
}


#Preview {
    NavigationRoot()
}

