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
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack{
                Image("redditFace")
                    .resizable()
                    .scaledToFill()
                    .font(.largeTitle)
                    .imageScale(.small)
                    .frame(width: 30, height: 40)
                    .clipShape(Circle())
                Text("r/\(post.threadTitle)")
                
            }
            Text(post.messageTitle)
                .font(.title)
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
                Image(systemName: "bubble.left")
                Text("\(post.commentsNum) Comments")
                    .foregroundColor(.black)
                Spacer()
                Image(systemName: "arrow.clockwise")
                Text("\(post.daysAgo) days ago")
                    .foregroundColor(.black)
                
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

