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
    var body: some View {
        //buat kek div nya
        NavigationView {
            List {
                modelData.features[0].image
                                  .resizable()
                                  .scaledToFill()
                                  .frame(height: 200)
                                  .clipped()

            ForEach(modelData.categories.keys.sorted(), id: \.self) { key in Text(key)
                //pass category info
                CategoryRow(categoryName: key, items: modelData.categories[key]!)
            }
                
            }
            .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}