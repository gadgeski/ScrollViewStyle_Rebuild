//
//  PhotoView.swift
//  ScrollViewStyle_Rebuild
//
//  Created by Dev Tech on 2025/04/25.
//

import SwiftUI

struct PhotoView: View {
    var photo:PhotoData

    var body: some View {
        VStack {
            Image(photo.imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
        Text(photo.title)
            .bold()
            .padding(.top, 10)
            .padding(.bottom, 20)
        }
        .background(Color(red: 0.3, green: 0.3, blue:0.5))
        .cornerRadius(8)
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(photo:photoArray[0])
    }
}
