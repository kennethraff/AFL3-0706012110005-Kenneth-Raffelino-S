//
//  LandmarkRow.swift
//  AFL3-0706012110005-Kenneth Raffelino S
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI

struct LandmarkRow: View {
    
    //simpan properti landmark
    var landmark: Landmark
    var body: some View {
        HStack {
            //kasih gambar tiap landmark
                    landmark.image
                        .resizable()
                        .frame(width: 50, height: 50)
            //kasih nama tiap landmark
                    Text(landmark.name)

                    Spacer()
            //buat tanda star favorit
            if landmark.isFavorite {
                            Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                        }
                }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        
        //beda hp
        Group {
            //set parameter indeks array yang yang ditampilkan
            LandmarkRow(landmark: landmarks[0])
                    .previewLayout(.fixed(width: 300, height: 70))
            LandmarkRow(landmark: landmarks[1])
                    .previewLayout(.fixed(width: 300, height: 70))
               }
    }
}
