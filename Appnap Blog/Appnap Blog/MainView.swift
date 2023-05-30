//
//  MainView.swift
//  Appnap Blog
//
//  Created by Appnap ws27 on 29/5/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            HomeScreenView().tabItem{
                Label("Home", systemImage: "house")
            }
            ArticleView().tabItem{
                Label("Article", systemImage: "book")
            }
            SearchView().tabItem{
                Label("Search", systemImage: "magnifyingglass")
            }
            AccountView().tabItem{
                Label("Accounts", systemImage: "person")
            }
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
