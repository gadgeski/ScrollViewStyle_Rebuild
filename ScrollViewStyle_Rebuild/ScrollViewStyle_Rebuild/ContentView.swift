//
//  ContentView.swift
//  ScrollViewStyle_Rebuild
//
//  Created by Dev Tech on 2025/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(alignment: .center, spacing: 10) {
                ForEach(photoArray) { PhotoData in
                    PhotoView(photo:PhotoData)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                        .frame(width: 450, height: 700)
                }
            }
        }.padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
