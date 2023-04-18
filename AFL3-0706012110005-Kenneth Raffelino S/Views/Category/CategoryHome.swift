//
//  CategoryHome.swift
//  AFL3-0706012110005-Kenneth Raffelino S
//
//  Created by MacBook Pro on 18/04/23.
//

import SwiftUI

struct CategoryHome: View {
    //create modelData
    @EnvironmentObject var modelData: ModelData
    @State private var showingProfile = false
    var body: some View {
        //buat kek div nya
        NavigationView {
            List {
                PageView(pages: modelData.features.map { FeatureCard(landmark: $0) })
                                  .aspectRatio(3 / 2, contentMode: .fit)
                                  .listRowInsets(EdgeInsets())
//                modelData.features[0].image
//                                  .resizable()
//                                  .scaledToFill()
//                                  .frame(height: 200)
//                                  .clipped()
//                                  .listRowInsets(EdgeInsets())

            ForEach(modelData.categories.keys.sorted(), id: \.self) { key in Text(key)
                //pass category info
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
                       .sheet(isPresented: $showingProfile) {
                           ProfileHost()
                               .environmentObject(modelData)
                       }
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
