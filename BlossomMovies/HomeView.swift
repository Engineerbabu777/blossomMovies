//
//  HomeView.swift
//  BlossomMovies
//
//  Created by Engineer Awais on 07/01/2026.
//

import SwiftUI

struct HomeView: View {
    
    var heroTestTitle = Constants.testTitleURL
    
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                LazyVStack{
                    AsyncImage(url: URL(string: heroTestTitle)){ image in
                        image
                            .resizable()
                            .scaledToFit()
                    }placeholder:{
                        ProgressView()
                    }
                    .frame(width: geo.size.width, height: geo.size.height*0.85)
                    
                    HStack{
                        Button{
                            
                        } label:{
                            Text(Constants.playString)
                                .ghostButton()
                        }
                        
                        Button{
                            
                        } label:{
                            Text(Constants.downloadString)
                                .ghostButton()
                            
                        }
                    }
                }
                HorizontalListView(header: Constants.trendingMoviesString)
                HorizontalListView(header: Constants.trendingTVString)
                HorizontalListView(header: Constants.topRatedMovieString)
                HorizontalListView(header: Constants.topRatedTVString)
            }
        }
       
        
    }
}

#Preview {
    HomeView()
}
