//
//  CommunitiesView.swift
//  Reddit_App
//
//  Created by Jonathan Barta on 11/27/23.
//

import SwiftUI

struct CommunitiesView: View {
    @State private var isShowingInProgress = false
        
    var body: some View {
        VStack{
            HStack{
                Button {
                    isShowingInProgress = true
                } label: {
                    Image(systemName: "line.3.horizontal")
                        .foregroundColor(.black)
                }
                .sheet(isPresented: $isShowingInProgress) {
                    InProgressView()
                    }
                
                .padding(.horizontal, 16)
                Spacer()
                Text("Communities")
                    .padding(.leading, 35)
                    .bold()

                Spacer()
                Button {
                    isShowingInProgress = true
                } label: {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.black)
                }
                    .sheet(isPresented: $isShowingInProgress) {
                    InProgressView()
                    }
                
                Button {
                    isShowingInProgress = true
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
                .sheet(isPresented: $isShowingInProgress) {
                    InProgressView()
                    }
                
                
                
            }
            Spacer()
            Image("stop")
                .resizable()
                .scaledToFill()
                .font(.largeTitle)
                .imageScale(.small)
                .frame(width: 200, height: 100)
                .padding(.vertical,90)
            Text("Hello! This view is still under construction!")
            Spacer()
        }
    }
}

#Preview {
    CommunitiesView()
}
