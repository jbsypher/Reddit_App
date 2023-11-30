//
//  InboxView.swift
//  Reddit_App
//
//  Created by Jonathan Barta on 11/27/23.
//

import SwiftUI

struct InboxView: View {
    @State private var isShowingInProgress = false
    var examplePosts: [PostStruct] = [.examplePost1, .examplePost2, .examplePost3, .examplePost4, .examplePost5, .examplePost6, .examplePost7, .examplePost8, .examplePost9, .examplePost10, .examplePost11]

    var body: some View {
        VStack{
            HStack(){
                Button {
                    isShowingInProgress = true
                } label: {
                    Image(systemName: "line.3.horizontal")
                        .foregroundColor(.black)
                }
                .padding(.horizontal, 16)
                    .sheet(isPresented: $isShowingInProgress) {
                    InProgressView()
                    }
                Spacer()
                Text("Inbox")
                    .padding(.leading, 35)
                    .bold()
                    
                Spacer()
                Button {
                    isShowingInProgress = true
                } label: {
                    Image(systemName: "ellipsis")
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
            ScrollView {
                ForEach(examplePosts) { post in
                    
                    VStack{
                        HStack {
                            Image("redditFace")
                                .resizable()
                                .scaledToFill()
                                .font(.largeTitle)
                                .imageScale(.small)
                                .frame(width: 30, height: 40)
                                .clipShape(Circle())
                                
                            Text("r/\(post.threadTitle)5:")
                                .font(.body)
                            
                            
                            Text("\(post.daysAgo)h")
                                .font(.body)
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        .padding(.horizontal)
                        Text("\(post.inboxMess)")
                            .font(.body)
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .alignmentGuide(.leading) { _ in 0 }
                            .padding(.horizontal)
                            
                    }
                    .padding(.vertical, 10)
                    
                }
            }
            
            Spacer()
            
        }
    }
}
