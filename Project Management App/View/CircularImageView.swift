//
//  CircularImageView.swift
//  Project Management App
//
//  Created by LVMM on 27/04/2023.
//

import SwiftUI

struct CircularImageView: View {
    
    let name: String
    let size: CGFloat
    
    var body: some View {
        Image(name)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: size, height: size)
            .clipShape(Circle())
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(name: "profile", size: 42)
            .previewLayout(.sizeThatFits)
    }
}
