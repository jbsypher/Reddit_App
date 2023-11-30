//
//  PostView.swift
//  Reddit_App
//
//  Created by Jonathan Barta on 11/28/23.
//

import SwiftUI

struct PostView: View {
    @State var post: PostStruct
    @State private var isUpvote: Bool = false
    @State private var isDownvote: Bool = false
    @State private var showThreadView = false
    @State private var isShowingInProgress = false

    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack{
                Image("redditFace")
                    .resizable()
                    .scaledToFill()
                    .font(.largeTitle)
                    .imageScale(.small)
                    .frame(width: 30, height: 40)
                    .clipShape(Circle())
                
                
                //Thread navigation
                NavigationLink(
                    destination: ThreadView(post: post), // Pass the selected post to ThreadView
                    label: {
                        Text("r/\(post.threadTitle)")
                            .foregroundColor(.black)
                    })
                    .padding(.horizontal, 5)
                
                Text("\(post.daysAgo)d")
                    .foregroundColor(.gray)
                Spacer()
                Button(action: {
                            isShowingInProgress = true
                        }) {
                            Text("Join")
                                .foregroundColor(.white)
                                .font(.body)
                                .padding(.horizontal,10)
                                .padding(.vertical,3)
                                .background(Color.blue)
                                .cornerRadius(50)
                        }
                        .sheet(isPresented: $isShowingInProgress) {
                        InProgressView()
                        }
                
            }//HStack ends
            
            
            Text(post.messageTitle)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.black)
                
            
            Text(post.message)
                .font(.body)
                .foregroundColor(.black)
                .lineLimit(3)
            
            HStack {
                // Upvote Button
                Button {
                    isUpvote.toggle()
                    if isUpvote {
                        post.originalUpvotes += 1
                        isDownvote = false
                    } else {
                        post.originalUpvotes -= 1
                    }
                } label: {
                    Image(systemName: isUpvote ? "arrowshape.up.fill" : "arrowshape.up")
                }
                
                // Text Displaying Votes
                Text("\(post.originalUpvotes) ")
                    .foregroundColor(.black)
                
                // Downvote Button
                Button {
                    isDownvote.toggle()
                    if isDownvote {
                        post.originalUpvotes -= 1
                        isUpvote = false
                    } else {
                        post.originalUpvotes += 1
                    }
                } label: {
                    Image(systemName: isDownvote ? "arrowshape.down.fill" : "arrowshape.down")
                }
                Text("   ")
                //comments
                
                Button(action: {
                            isShowingInProgress = true
                        }) {
                            Image(systemName: "bubble.left")
                        }
                        .sheet(isPresented: $isShowingInProgress) {
                        InProgressView()
                        }
                Text("\(post.commentsNum) Comments")
                    .foregroundColor(.black)
                Spacer()
                                
            }
            .font(.caption)
            .foregroundColor(.gray)
            .padding(.top, 8)
        }
        .padding(12)
        .background(Color(UIColor.systemBackground))
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
        )
        .shadow(color: Color.black.opacity(0.1), radius: 2, x: 0, y: 2)
    }
}

