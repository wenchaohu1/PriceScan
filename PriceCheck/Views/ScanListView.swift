import SwiftUI

struct ScanListView: View {
    var body: some View {
        let locationScans = Bundle.main.decode([Location].self, from: "scan_api_data.json").sorted(by: { $0 < $1 })
        
        NavigationView {
            List {
                ForEach(locationScans) { location in
                    LocationView(location: location)
                }
            }
            .navigationBarTitle("Scans")
        }
    }
}

struct ScanListView_Previews: PreviewProvider {
    static var previews: some View {
        ScanListView()
    }
}
