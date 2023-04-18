//
//  Landmark.swift
//  AFL3-0706012110005-Kenneth Raffelino S
//
//  Created by MacBook Pro on 14/04/23.
//

import Foundation
import SwiftUI
import CoreLocation
struct Landmark: Hashable, Codable,Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    //buat favorit
    var isFavorite: Bool
    var isFeatured: Bool
    
    var category: Category
       enum Category: String, CaseIterable, Codable {
           case lakes = "Lakes"
           case rivers = "Rivers"
           case mountains = "Mountains"
       }
    
    // inisialisasi untuk gambar gambar landmark
    private var imageName: String
        var image: Image {
            Image(imageName)
        }
    
    
    //inisialisasi untuk koordinat
    private var coordinates: Coordinates

    //ini buat inisialisasi titik koordinat tepatnya di mapkit
    var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude)
        }
        struct Coordinates: Hashable, Codable {
            var latitude: Double
            var longitude: Double
        }
}
