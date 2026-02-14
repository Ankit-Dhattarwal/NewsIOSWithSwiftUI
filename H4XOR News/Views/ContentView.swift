//
//  ContentView.swift
//  H4XOR News
//
//  Created by Ankit on 14/02/26.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List (networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .onAppear(perform: {
                self.networkManager.fetchData()
            })
            
        }
    }
}
//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjor"),
//    Post(id: "3", title: "Halo"),
//]

#Preview {
    ContentView()
}
