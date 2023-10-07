//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Kevin Dinicola on 10/5/23.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showingProfile = false

    
    var body: some View {
        NavigationView {
            List {
                TabView {
                    modelData.features[0].image
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .listRowInsets(EdgeInsets())
                    modelData.features[0].image
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .listRowInsets(EdgeInsets())
                    modelData.features[0].image
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .listRowInsets(EdgeInsets())
                }
                .frame(height: 200)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
    
//                .tabViewStyle(PageTabViewStyle())
                .listRowInsets(EdgeInsets())
//                modelData.features[0].image
//                    .resizable()
//                    .scaledToFill()
//                    .frame(height: 200)
//                    .clipped()
//                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Featured")
            .toolbar {
                Button {
                    showingProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
            }
            .sheet(isPresented: $showingProfile, content: {
                ProfileHost()
                    .environment(modelData)
            })

        }
        
    }
}


#Preview {
    CategoryHome()
        .environmentObject(ModelData())
}
