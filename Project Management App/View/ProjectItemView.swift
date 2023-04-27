//
//  ProjectItemView.swift
//  Project Management App
//
//  Created by LVMM on 27/04/2023.
//

import SwiftUI

struct ProjectItemView: View {
    
    let number:Int
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Number \(number)")
                    .font(.footnote)
                    .foregroundColor(Color.gray)
                
                Spacer()
                
                Text("4h")
                    .font(.footnote)
                    .foregroundColor(Color.gray)
            }
            .padding(.horizontal)
            .padding(.top)
            .padding(.bottom, 5)
            
            Text("Blog and social posts")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .padding(.leading)
            
            Spacer(minLength: 20)
            
            Label {
                Text("Deadline is today")
            } icon: {
                Image(systemName: "info.circle")
            }
            .padding(.leading)
            
            Spacer()
            
        }
        .frame(height: 150)
        .cornerRadius(15)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(.gray, lineWidth: 1)
        )
    }
}

struct ProjectItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectItemView(number: 20)
            .previewLayout(.sizeThatFits)
    }
}
