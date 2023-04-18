import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = true
    
    
    //buat filter landmark
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
                (!showFavoritesOnly || landmark.isFavorite)
            }
        }
    var body: some View {
        NavigationView {
            List {

                //buat toggle nyala mati fav only
                Toggle(isOn: $showFavoritesOnly) {
                                    Text("Favorites only")
                                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
//        NavigationStack(
//            List(landmarks){
//                landmark in NavigationLink{
//                    LandmarkDetail(landmark: Landmark)
//                } label: {
//                    LandmarkRow(landmark: Landmark)
//                }
//            }
//                .navigationTitle("Landmarks")
//        )
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
