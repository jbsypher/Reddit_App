//
//  ChatView.swift
//  Reddit_App
//
//  Created by Jonathan Barta on 11/27/23.
//

import SwiftUI

struct ChatView: View {
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
                .padding(.horizontal, 16)
                    .sheet(isPresented: $isShowingInProgress) {
                    InProgressView()
                    }
                
                
                Spacer()
                Text("Chat")
                    .padding(.leading, 35)
                    .bold()

                Spacer()
                Button {
                    isShowingInProgress = true
                } label: {
                    Image(systemName: "plus.message")
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
            HStack{
                Image("Messages")
                    .resizable()
                    .scaledToFill()
                    .font(.largeTitle)
                    .imageScale(.small)
                    .frame(width: 170, height: 170)
                    .clipShape(Circle())
            }
            .padding(.horizontal,20)
            
            Text("Your chats will show up here.")
                .bold()
                .padding(.vertical, 3)

            
            Text("Get started by tapping the new chat button here or on someone's profile.")
                .multilineTextAlignment(.center)
                .padding(.horizontal, 14)
            Button(action: {
                        isShowingInProgress = true
                    }) {
                        HStack {
                        Image(systemName: "plus.message")
                                .foregroundColor(.white)
                                .padding(.leading, 10)
                                        
                        Text("START CHATTING")
                            .foregroundColor(.white)
                            .font(.body)
                            .padding(.vertical, 10)
                            .padding(.trailing,10)
                        }
                        .background(Color.blue)
                        .cornerRadius(30)
                    }
                    .sheet(isPresented: $isShowingInProgress) {
                    InProgressView()
                    }
            Spacer()
        }
    }
}

#Preview {
    ChatView()
}
