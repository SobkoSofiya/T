//
//  ContentView.swift
//  TVYouTub
//
//  Created by Sofi on 14.01.2021.
//

import SwiftUI
import AVKit

struct ContentView: View {
    var body: some View {
        Video()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Video: UIViewControllerRepresentable {
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<Video>) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
       let url = "http://gym.areas.su/up/video.mp4"
        let Video1 = AVPlayer(url: URL(string: url)!)
        controller.player = Video1
        return controller
        
    }
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<Video>) {
    }
    
}
