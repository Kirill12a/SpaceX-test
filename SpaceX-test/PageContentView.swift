//
//  PageContentView.swift
//  pageControllerTest
//
//  Created by Kirill Drozdov on 02.04.2022.
//

import SwiftUI

struct PageContentView: View {

  @State var image: String
  @State var title: String
  @State var allText: String

    var body: some View {

      VStack{

        VStack(spacing: 20) {
          Image(systemName: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: 400)


          ScrollView(.vertical){
            RoundedRectangle(cornerRadius: 20, style: .continuous)

              .frame(width: UIScreen.main.bounds.width / 1.3, height: UIScreen.main.bounds.height / 2)
              .foregroundColor(.pink)
              .shadow(color: .blue.opacity(0.4), radius: 10, y: 10)
              .overlay{


                VStack{
            Text(title)
                .font(.largeTitle)
                .padding(.top, 20)

            Text(allText)
                .font(.caption)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .lineSpacing(8)

            Spacer()
        }
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
              }
            
          }
        }
    }
}
}
struct PageContentView_Previews: PreviewProvider {
    static var previews: some View {
      PageContentView(image: "", title: "fds", allText: "dsf")
    }
}
