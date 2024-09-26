//
//  LocationView.swift
//  PriceCheck
//
//  Created by Wenchao Hu on 9/26/24.
//
 
import SwiftUI

struct LocationView: View {
    let location: Location
    
    var body: some View {
        Section(header: Text(location.name)) {
            ForEach(location.scans.sorted()) { scan in
                ScanView(scan: scan)
            }
        }
    }
}
