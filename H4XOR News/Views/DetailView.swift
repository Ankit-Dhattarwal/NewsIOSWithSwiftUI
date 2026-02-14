//
//  DetailView.swift
//  H4XOR News
//
//  Created by Ankit on 14/02/26.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
