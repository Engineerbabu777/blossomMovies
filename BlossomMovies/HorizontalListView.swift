//
//  HorizontalListView.swift
//  BlossomMovies
//
//  Created by Engineer Awais on 12/01/2026.
//

import SwiftUI

struct HorizontalListView: View {
    
    let header = Constants.trendingMoviesString
    var titles = [
        Constants.testTitleURL,
        Constants.testTitleURL3,
        Constants.testTitleURL2,
        
    ]
    
    var body: some View {
        VStack(alignment: .leading){
            Text(header)
                .font(.title)
            
            ScrollView(.horizontal){
                LazyHStack{
                    ForEach(titles, id:\.self) {title in
                        AsyncImage(url: URL(string: title)){image in
                            image
                                .resizable()
                                .scaledToFit()
                        } placeholder:{
                            ProgressView()
                        }
                        .frame(width:120,height:200)
                        
                    }
                }
            }
        }.frame(height:250)
            .padding(10)
           
    }
}

#Preview {
    HorizontalListView()
}
