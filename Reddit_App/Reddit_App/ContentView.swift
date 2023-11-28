//
//  ContentView.swift
//  Reddit_App
//
//  Created by Jonathan Barta on 11/27/23.
//
import SwiftUI


struct ContentView: View {
    var body: some View {
        
        VStack{
            HStack{
                Button {
                    
                } label: {
                    Image(systemName: "line.3.horizontal")
                        
                }
                .padding(.horizontal, 16)
                Spacer()
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "ellipsis")
                }
                Button {
                    
                } label: {
                    Image("redditFace")
                        .resizable()
                        .scaledToFill()
                        .font(.largeTitle)
                        .imageScale(.small)
                        .frame(width: 30, height: 40)
                        .clipShape(Circle())
                        
                }
                .padding(.horizontal, 16)
                
                
                
            }
            
        }
        TabView{
            
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house.fill")
                }
            CommunitiesView()
                .tabItem{
                    Label("Communities", systemImage: "person.2.circle")}
            CreateView()
                .tabItem{
                    Label("Create", systemImage: "plus")}
            ChatView()
                .tabItem{
                    Label("Chat", systemImage: "ellipsis.message")}
            InboxView()
                .tabItem{
                    Label("Inbox", systemImage: "bell")}
            
        }//TabView
    }
}

#Preview {
    ContentView()
}
