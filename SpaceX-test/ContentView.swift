//
//  ContentView.swift
//  pageControllerTest
//
//  Created by Kirill Drozdov on 02.04.2022.
//

import SwiftUI

struct ContentView: View {

  init() {
    let pageControl = UIPageControl.appearance()
    pageControl.currentPageIndicatorTintColor = .label
    pageControl.pageIndicatorTintColor = .separator
  }

  var body: some View {
    VStack {
      TabView {
        PageContentView(image: "test", title: "Falcon Heavy")
        PageContentView(image: "test", title: "fsd")
        PageContentView(image: "test", title: "fds")
      }
      .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
      .ignoresSafeArea()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
