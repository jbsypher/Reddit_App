//
//  PostView.swift
//  Reddit_App
//
//  Created by Jonathan Barta on 11/28/23.
//

import SwiftUI

struct PostView: View {
    let post: PostStruct
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(post.messageTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Text(post.message)
                .font(.body)
                .foregroundColor(.black)
                .lineLimit(3)
            
            HStack {
                Image(systemName: "bubble.left")
                Text("\(post.commentsNum)")
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

