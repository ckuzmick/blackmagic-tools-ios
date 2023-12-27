//
//  ContentView.swift
//  Blackmagic Tools IOS
//
//  Created by ck on 12/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            StillCaptureView()
                .tabItem {
                    Image(systemName: "photo.fill")
                    Text("Still Capture")
                }
            GifCaptureView()
                .tabItem {
                    Image(systemName: "video.fill")
                    Text("Gif Capture")
                }
            VideoCaptureView()
                .tabItem {
                    Image(systemName: "play.rectangle.fill")
                    Text("Video Capture")
                }
        }
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.945, green: 0.949, blue: 0.971)/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

