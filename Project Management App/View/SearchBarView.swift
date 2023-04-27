//
//  SearchBarView.swift
//  Project Management App
//
//  Created by LVMM on 27/04/2023.
//

import SwiftUI

struct SearchBarView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        HStack {
            TextField("Search", text: $searchText)
                .padding()
            
            
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
                .font(.system(size: 22))
                .padding()
        }
        .background(Color(.white))
        .cornerRadius(8)
        .padding(.top, 20)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
            .previewLayout(.sizeThatFits)
            .background(Color.black)
    }
}
