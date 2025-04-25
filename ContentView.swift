import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(alignment: .center, spacing: 20) {
                ForEach(photoArray) { PhotoData in
                    PhotoView(photo:PhotoData)
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