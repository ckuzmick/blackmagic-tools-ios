//
//  StillCaptureView.swift
//  Blackmagic Tools IOS
//
//  Created by ck on 12/26/23.
//

import SwiftUI

struct StillCaptureView: View {
    @State private var selectedTable = 0;
    @State private var selectedCam = 0;
    
    var body: some View {
        Form {
            Picker("Table", selection: $selectedTable) {
                Text("Main Table").tag(0)
                Text("Side Table").tag(1)
            }
            .pickerStyle(.inline)
            
            Picker("Camera", selection: $selectedCam) {
                if (selectedTable == 0) {
                    Text("Overhead").tag(0)
                    Text("Front On").tag(1)
                    Text("Close Up").tag(2)
                } else if (selectedTable == 1) {
                    Text("Front On").tag(1)
                    Text("Close Up").tag(2)
                }
            }
            .pickerStyle(.inline)
            
            Button("Capture Still") {
                // TaskRunner().runTask(command: "get_still_script", args: [String(selectedTable), String(selectedCam)])
                print("Stuff")
            }
        }
    }
}

struct StillCaptureView_Previews: PreviewProvider {
    static var previews: some View {
        StillCaptureView()
    }
}
