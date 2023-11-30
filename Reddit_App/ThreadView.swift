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
            activeSubs: 3492,
            inboxMess: "hi"
        )//Check to see if this code is needed
        
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
    @State private var isShowingInProgress = false

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
                    .font(.headline)
                Spacer()
                Button(action: {
                            isShowingInProgress = true
                        }) {
                            Text("Join")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(50)
                        }
                        .sheet(isPresented: $isShowingInProgress) {
                        InProgressView()
                        }
            }
            
            
            Text("\(post.activeSubs) Active Members")
                .lineLimit(3)
                .foregroundColor(.secondary)
            
        }
        .padding()
        
        Spacer()
        
    }
}


struct ThreadView_Previews: PreviewProvider {
    static var previews: some View {
        ThreadCreateView()
    }
}

