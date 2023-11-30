//
//  InProgressView.swift
//  Reddit_App
//
//  Created by Jonathan Barta on 11/28/23.
//

import SwiftUI

struct InProgressView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
            Image("stop")
                .resizable()
                .scaledToFill()
                .font(.largeTitle)
                .imageScale(.small)
                .frame(width: 200, height: 100)
                .padding(.vertical,90)
            Text("Hello! This view is still under construction!")
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                
            }, label: {
                Text("Click here to go back! (or swipe down)")
            })
            .padding(.vertical,100)
            
            
            
        }
    }
}

#Preview {
    InProgressView()
}
