//
//  InProgressView.swift
//  Reddit_App
//
//  Created by Jonathan Barta on 11/28/23.
//

import SwiftUI

struct InProgressView: View {
    var body: some View {
        Text("Hello! This view is still under construction!")
        NavigationLink {
            NavigationRoot()
                } label: {
                        Text("Click here to get back home!")
                    }
    }
}

#Preview {
    InProgressView()
}
