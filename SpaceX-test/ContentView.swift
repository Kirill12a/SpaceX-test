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
              PageContentView(image: "pencil.and.outline", title: "FDS", allText: "fdsf")
              PageContentView(image: "lasso.and.sparkles", title: "fsd", allText: "fs")
              PageContentView(image: "folder.fill", title: "fds", allText: "fs")
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .padding(.bottom, 40)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
