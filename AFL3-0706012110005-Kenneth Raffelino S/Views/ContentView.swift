//
//  ContentView.swift
//  AFL3-0706012110005-Kenneth Raffelino S
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            LandmarkList()
            //            MapView().frame(height: 300).ignoresSafeArea(edges: .top)
            //
            ////            Image(systemName: "globe")
            ////                .imageScale(.large)
            ////                .foregroundColor(.accentColor)
            //            CircleImage()
            //                            .offset(y: -130)
            //                            .padding(.bottom, -130)
            //            VStack (alignment: .leading){
            //                Text("Turtle Rock")
            //                    .font(.title).foregroundColor(.black)
            //                HStack {
            //                    Text("Joshua Tree National Park")
            //                        .font(.subheadline)
            //                    Spacer()
            //                    Text("California")
            //                        .font(.subheadline)
            //                }
            //                .font(.subheadline)
            //                                .foregroundColor(.secondary)
            //
            //                Divider()
            //
            //                                Text("About Turtle Rock")
            //                                    .font(.title2)
            //                                Text("Descriptive text goes here.")
            //            }
            //        }
            //        .padding()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
