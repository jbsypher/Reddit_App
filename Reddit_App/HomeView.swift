//
//  HomeView.swift
//  Reddit_App
//
//  Created by Jonathan Barta on 11/27/23.
//
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button {} label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal, 16)
                    
                    Spacer()
                    
                    Text("Home")
                        .padding(.leading, 35)
                        .bold()
                    
                    Spacer()
                    
                    Button {} label: {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.black)
                    }
                    
                    Button {} label: {
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
                
                ScrollView{
                    PostView(post: PostStruct.examplePost1)
                    PostView(post: PostStruct.examplePost2)
                    PostView(post: PostStruct.examplePost3)
                    PostView(post: PostStruct.examplePost4)
                    PostView(post: PostStruct.examplePost5)
                    PostView(post: PostStruct.examplePost6)
                    PostView(post: PostStruct.examplePost7)
                    PostView(post: PostStruct.examplePost8)
                    PostView(post: PostStruct.examplePost9)
                    PostView(post: PostStruct.examplePost10)
                    PostView(post: PostStruct.examplePost11)
                }
                
                    
                Spacer()
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


#Preview {
    HomeView()
}
