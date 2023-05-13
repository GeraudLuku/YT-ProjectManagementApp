//
//  ContentView.swift
//  Project Management App
//
//  Created by LVMM on 24/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                TabView {
                    HomeScreen()
                        .tabItem {
                            Image(systemName: "house.fill")
                        }
                        .toolbarBackground(Color.white, for: .tabBar)

                    Text("The content")
                        .tabItem {
                            Image(systemName: "folder.fill")
                        }

                    Text("The content")
                        .tabItem {
                            Image(systemName: "doc.plaintext.fill")
                        }

                    Text("The content")
                        .tabItem {
                            Image(systemName: "calendar")
                        }
                } // TAB VIEW
                .accentColor(.black)
            }
            .toolbar {
                
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    
                    CircularImageView(name: "profile", size: 42)
                    
                    Text("Hi, Kira!")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "bell.fill")
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
