//
//  CommunitiesView.swift
//  Reddit_App
//
//  Created by Jonathan Barta on 11/27/23.
//

import SwiftUI

struct CommunitiesView: View {
    var body: some View {
        VStack{
            HStack{
                Button {
                    
                } label: {
                    Image(systemName: "line.3.horizontal")
                        .foregroundColor(.black)
                        
                    
                }
                .padding(.horizontal, 16)
                Spacer()
                Text("Communities")
                    .padding(.leading, 35)
                    .bold()

                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.black)
                }
                Button {
                    
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
                
                
                
            }
            Spacer()
            
        }
    }
}

#Preview {
    CommunitiesView()
}
