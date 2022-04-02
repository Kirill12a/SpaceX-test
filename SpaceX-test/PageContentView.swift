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

  var body: some View {

    VStack{

      VStack(spacing: 20) {
        Image(uiImage: UIImage(named: image)!)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(maxHeight: 400)
          .padding()


        ScrollView(.vertical){
          RoundedRectangle(cornerRadius: 20, style: .continuous)
            .frame(width: UIScreen.main.bounds.width / 1.3, height: UIScreen.main.bounds.height / 2)
            .foregroundColor(.pink)
            .shadow(color: .blue.opacity(0.4), radius: 10, y: 10)
          // !!!!!!!!!!!!!!!!!!
            .overlay{
              VStack{
                HStack{
                Text(title)
                  .font(.title3)
                  .padding(.top, 20)
                  Spacer()

                  Button {
                    print("Я Д")
                  } label: {
                    Image(uiImage: UIImage(named: "gear")!)
                      .resizable()
                      .padding(.top, 20)
                      .frame(width: 30, height: 50)
                  }
                }
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))

                ScrollView(.horizontal){
                  ParametrsViewElement()
                  ParametrsViewElement()
                  ParametrsViewElement()

                 

                }
                Spacer()

              }

            }

        }
        
      }
    }
  }
}
struct PageContentView_Previews: PreviewProvider {
  static var previews: some View {
    PageContentView(image: "test", title: "fds")
  }
}
