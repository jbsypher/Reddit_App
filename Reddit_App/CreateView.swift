//
//  CreateView.swift
//  Reddit_App
//
//  Created by Jonathan Barta on 11/27/23.
//

import SwiftUI

struct CreateView: View {
    @Environment(\.dismiss) var dismiss

    @State private var postTitle = ""
    @State private var postBody = ""
    @State private var isKeyboardVisible = false
    @State private var yOffset = UIScreen.main.bounds.height
    @State private var isShowingScreen = false
    
    @Binding var showingSheet: Bool
    @Binding var selection: Int
    let didDismissCreateView: () -> Void

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                TextField("Title", text: $postTitle)
                    .font(Font.system(size: 25, design: .default))
                    .padding(.leading)
                    .bold()
                    .tint(.black)
                    .padding(.vertical, 3)
                
                TextField("body text (optional)", text: $postBody)
                    .font(Font.system(size: 15, design: .default))
                    .padding(.leading)
                
                
                Spacer()
            }
            .navigationBarItems(
                leading: Button(action: {
                    dismiss()
                    didDismissCreateView()
                }, label: {
                    Image(systemName: "xmark")
                }),
                trailing: Button(action: {
                    isShowingScreen = true
                }, label: {
                    Text("Next")
                        .fontWeight(.bold)
                })
                .sheet(isPresented: $isShowingScreen) {
                    BackEndView()
                }
                .disabled(postTitle.isEmpty)
            )
//            .offset(y: yOffset)
            .onAppear {
//                withAnimation(.easeInOut(duration: 0.5)){
//                    yOffset = 0
//            }
                
                // Show the keyboard immediately upon view appearance
                
                
                self.isKeyboardVisible = true
            }
            .padding(.bottom, isKeyboardVisible ? 0 : 0) // Adjust view position when keyboard is visible
            .edgesIgnoringSafeArea(.bottom) // Ignore safe area for keyboard
        }
    }
}




extension View {
    func withSheetTransition() -> some View {
        return withAnimation {
            self.transition(.move(edge: .bottom))
        }
    }
}
