//
//  CreateView.swift
//  Reddit_App
//
//  Created by Jonathan Barta on 11/27/23.
//

import SwiftUI

struct CreateView: View {
    @State private var postTitle = ""
    @State private var postBody = ""
    @State private var isKeyboardVisible = false
    @Environment(\.presentationMode) var presentationMode

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
                    presentationMode.wrappedValue.dismiss()
                    NavigationLink(destination: HomeView()) {
                            Text("")
                    }
                }, label: {
                    Image(systemName: "xmark")
                }),
                trailing: Button(action: {
                    // Perform action for "Next" button
                }, label: {
                    Text("Next")
                        .fontWeight(.bold)
                })
                .disabled(postTitle.isEmpty || postBody.isEmpty)
            )
        }
        .onAppear {
            // Show the keyboard immediately upon view appearance
            self.isKeyboardVisible = true
        }
        .padding(.bottom, isKeyboardVisible ? 0 : 0) // Adjust view position when keyboard is visible
        .edgesIgnoringSafeArea(.bottom) // Ignore safe area for keyboard
    }
}



struct PostCreationView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
