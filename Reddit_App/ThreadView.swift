//
//  ThreadView.swift
//  Reddit_App
//
//  Created by Jonathan Barta on 11/29/23.
//
import SwiftUI

struct ThreadCreateView: View {
    // Sample data for demonstration
    let posts: [PostStruct] = [
        PostStruct(
            threadTitle: "AlecIsRad",
            originalUpvotes: 423,
            message: "In the heart of code complexities, a labyrinth of bugs emerged...",
            messageTitle: "First Post",
            commentsNum: 25,
            daysAgo: 3,
            activeSubs: 3492
        ),
        
        // Add more PostStruct instances here if needed...
    ]

    var body: some View {
        List(posts) { post in
            ThreadView(post: post)
        }
    }
}

struct ThreadView: View {
    let post: PostStruct

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("r/\(post.threadTitle)")
                .font(.headline)
            Text("\(post.activeSubs) Active Members")
                .lineLimit(3)
                .foregroundColor(.secondary)
            HStack {
                Text("Comments: \(post.commentsNum)")
                Spacer()
                Text("\(post.daysAgo) days ago")
            }
        }
        .padding()
    }
}


struct ThreadView_Previews: PreviewProvider {
    static var previews: some View {
        ThreadCreateView()
    }
}

