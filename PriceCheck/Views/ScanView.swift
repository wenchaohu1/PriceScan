//
//  ScanView.swift
//  PriceCheck
//
//  Created by Wenchao Hu on 9/26/24.
//
 
import SwiftUI

struct ScanView: View {
    let scan: PriceScan
    
    var body: some View {
        HStack {
            Text(scan.item)
            Spacer()
            Text("$\(String(scan.price))")
                .bold()
        }
    }
}
